# This is pretty meta as we're benchmarking benchee itself namely the HTML reporter.

alias Benchee.Formatters.HTML

base_suite =
  [load: ["benchmarks/saves/tco_*.benchee"]]
  |> Benchee.init()
  # formatter relies on system data being present
  |> Benchee.system()
  |> Benchee.load()
  |> Benchee.relative_statistics()

folder = "benchmarks/output/reporting/"
opts = %{file: "#{folder}tco_focussed_detailed_inputs.html", auto_open: false}
suite_with_formatter = put_in(base_suite.configuration.formatters, [{HTML, opts}])

Benchee.run(
  %{
    "format & write" => fn -> base_suite |> HTML.format(opts) |> HTML.write(opts) end,
    "sequential_output" => fn -> HTML.sequential_output(base_suite, opts) end,
    "Formatter.output" => fn -> Benchee.Formatter.output(suite_with_formatter) end
  },
  time: 5,
  warmup: 1,
  memory_time: 1,
  save: [path: "benchmarks/saves/html_dafaq.benchee"],
  after_each: fn _ -> File.rm_rf!(folder) end
)
