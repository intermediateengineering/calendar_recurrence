defmodule CalendarRecurrence.MixProject do
  use Mix.Project

  def project() do
    [
      app: :calendar_recurrence,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps() do
    [
      {:nimble_parsec, "~> 1.3", only: [:dev, :test]},
      # TODO: use Hex package and add `optional: true`
      {:calendar_interval, github: "wojtekmach/calendar_interval"}
    ]
  end

  defp aliases() do
    [
      "compile.rrule": ["nimble_parsec.compile lib/calendar_recurrence/rrule_parser.ex.exs"]
    ]
  end
end
