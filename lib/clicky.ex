defmodule Clicky do
  @moduledoc """
  A wrapper around [Clicky API](https://clicky.com/help/api).

  """
  alias Clicky.Request


  @doc """
  Visitors.

  ## Examples

      iex> Clicky.visitors_list(type: "action-list")
      {:error, "if you want to set a specific type use Clicky.custom/1"}

  """
  @spec visitors_list() :: {:ok, map} | {:error, term}
  def visitors_list() do
    [type: "visitors-list"]
    |> Kernel.++(defualt_params())
    |> Request.fetch()
  end

  @spec visitors_list(Keyword.t) :: {:ok, map} | {:error, term}
  def visitors_list(type)
  def visitors_list([type: type]) do
    {:error, "if you want to set a specific type use Clicky.custom/1"}
  end
  def visitors_list(type) when is_list(type) do
    [type: "visitors-list"]
    |> Kernel.++(type)
    |> Kernel.++(defualt_params())
    |> Request.fetch()
  end


  @doc """
  Custom.

  ## Examples

      #iex> Clicky.custom(type: \"action-list\")
      {:ok, result}

      #iex> Clicky.custom()
      {:error, "Uhh you forgot to set a type like Clicky.custom(type: \"action-list\")"}

  """
  @spec custom(Keyword.t) :: {:ok, map} | {:error, term}
  def custom(type \\ [type: nil])
  def custom([type: nil]) do
    {:error, "Uhh you forgot to set a type like Clicky.custom(type: \"action-list\")"}
  end
  def custom(type) do
    type
    |> Kernel.++(defualt_params())
    |> Request.fetch()
  end


  defp defualt_params do
    [site_id: Application.get_env(:clicky, :site_id),
     site_key: Application.get_env(:clicky, :site_key),
     output: "json"]
  end

end
