Benchee.report(
  load: ["benchmarks/saves/tco_*.benchee"],
  formatters: [
    # {Benchee.Formatters.Console, extended_statistics: true},
    {Benchee.Formatters.HTML,
     file: "benchmarks/output/tco_focussed_detailed_inputs.html", auto_open: false}
    # fn suite -> Process.sleep(5000);Benchee.Formatters.HTML.sequential_output(suite, %{file: "benchmarks/output/tco_focussed_detailed_inputs.html", auto_open: false}) end
  ]
)
