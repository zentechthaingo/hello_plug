defmodule HelloPlug.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_plug,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:cowboy, :plug, :logger, :timex, :erlcloud]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:cowboy, "~> 1.0.0"},
     {:plug,   "~> 1.0"},
     {:json,   "~> 0.3.0"},
     {:timex, "~> 1.0.1"},
     {:erlcloud, git: "https://github.com/gleber/erlcloud", tag: "0.13.0"}]
  end
end
