Benchee.run(%{}, load: ["benchmarks/saves/tco_*.benchee"], formatters: [
  {Benchee.Formatters.Console, extended_statistics: true},
  {Benchee.Formatters.HTML, file: "benchmarks/output/tco_focussed_detailed_inputs.html", auto_open: false}
])
