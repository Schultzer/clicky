defmodule Clicky.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :clicky,
      version: @version,
      elixir: "~> 1.5",
      name: "Clicky",
      source_url: "https://github.com/schultzer/clicky",
      description: description(),
      package: package(),
      docs: docs(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
    A wrapper around https://clicky.com/help/api
    """
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "> 0.11.0"},
      {:jason, "~> 1.0.0-rc.2"}
    ]
  end

  defp package do
    [
      maintainers: ["Benjamin Schultzer"],
      licenses: ["MIT"],
      links: links(),
      files: [
        "lib", "config", "mix.exs", "README*", "CHANGELOG*", "LICENSE*"
      ]
    ]
  end

  def docs do
    [
      source_ref: "v#{@version}",
      main: "readme",
      extras: ["README.md", "CHANGELOG.md"]
    ]
  end

  def links do
    %{
      "GitHub"    => "https://github.com/schultzer/clicky",
      "Readme"    => "https://github.com/schultzer/clicky/blob/v#{@version}/README.md",
      "Changelog" => "https://github.com/schultzer/clicky/blob/v#{@version}/CHANGELOG.md"
    }
  end

end
