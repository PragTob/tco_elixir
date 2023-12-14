Benchee.report(
  load: ["benchmarks/saves/tco_*.benchee"],
  formatters: [
    fn suite ->
      Benchee.Formatters.HTML.sequential_output(suite, %{
        file: "benchmarks/output/tco_focussed_detailed_inputs.html",
        auto_open: false
      })
    end
  ]
)
