defmodule Rrulex.MixProject do
  use Mix.Project

  def project do
    [
      app: :rrulex,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:timex, "~> 3.3"},
      {:ex_doc, "~> 0.18", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false}
    ]
  end

  defp description do
    """
    RRULE parsing and expansion for Elixir
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Austin Hammer"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/austinh/rrulex"}
    ]
  end
end
