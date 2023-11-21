* There is a weird big first spike, double check if we're using the process from warmup or throwing it away?
* There is a weirdly rhytmic pattern to the run times I looked at for tail recurison for 100k, check with the others and see what it may be about/check other benchmarks
  * rhytmic pattern weirdly enough also exists on non JIT
  * maybe it goes away with more/proper warmup?
* there's also an interesting case due to the above where the median is _less_ than the average and tail/tail+order/body show up wildly different patterns