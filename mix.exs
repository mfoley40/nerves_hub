defmodule Nerves.Hub.Mixfile do

  @version "1.0.0"

  use Mix.Project

  def project do
    [app: :nerves_hub,
     description: "Heirarchical key-value state store with pub-sub semantics",
     version: @version,
     elixir: "~> 1.10",
     deps: deps(),
     # ExDoc
     name: "Hub",
     docs: [main: Nerves.Hub,
            source_url: "https://github.com/nerves-project/hub",
            homepage_url: "http://nerves-project.org/",
            extras: ["README.md", "CONTRIBUTING.md", "HISTORY.md"]]]
  end

  def application do
    [mod: {Nerves.Hub, []}]
  end

  defp deps, do: [
    {:nerves_lib, github: "mfoley40/nerves_lib"},
    {:earmark, "~> 1.4.10"},  # was 0.1.19, only: :dev
    {:ex_doc, "~> 0.10", only: :dev}
  ]

 end
