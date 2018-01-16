defmodule Clicky.Request do
  @moduledoc false

  @doc false
  @spec fetch(Keyword.t) :: {:ok, map} | {:error, String.t}
  def fetch(params) do
    params
    |> validate_params()
    |> get()
  end

  defp validate_params(params) do
    cond do
      Keyword.get(params, :site_id) == nil  -> {:error, "site_id hasn't been set in config"}

      Keyword.get(params, :site_key) == nil -> {:error, "site_key hasn't been set in config"}

      true                                  -> {:ok, params}
    end
  end

  defp get({:error, reason}), do: {:error, reason}
  defp get({:ok, params}) do
    Application.get_env(:clicky, :base_url, "https://api.clicky.com/api/stats/4")
    |> HTTPoison.get([], params: params)
    |> handle_resp
    |> decode
  end

  defp handle_resp({:ok, %HTTPoison.Response{status_code: 200, body: body}}) do
    {:ok, body}
  end
  defp handle_resp({:ok, %HTTPoison.Response{status_code: 404}}) do
    {:error, 404}
  end
  defp handle_resp({:error, %HTTPoison.Error{reason: reason}}) do
    {:error, reason}
  end

  defp decode({:error, reason}) do
    {:error, reason}
  end
  defp decode({:ok, json}) do
    Jason.decode(json)
  end

end