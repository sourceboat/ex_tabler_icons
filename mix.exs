defmodule ExTablerIcons.MixProject do
  use Mix.Project

  defp description do
    """
    [Tabler Icons](https://tabler-icons.io/) as Phoenix.Component. Strongly inspired by the [Heroicons Elixir Package](https://github.com/mveytsman/heroicons_elixir).
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Florian Arens", "Lennart Büttner"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sourceboat/ex_tabler_icons"}
    ]
  end

  def project do
    [
      app: :ex_tabler_icons,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      xref: [exclude: [:httpc, :public_key]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:castore, ">= 0.0.0"},
      {:phoenix_live_view, "~> 0.18.3"}
    ]
  end
end
