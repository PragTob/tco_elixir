Benchee.report(
  load: ["benchmarks/saves/tco_*.benchee"],
  formatters: [
    {Benchee.Formatters.Console, extended_statistics: true},
    {Benchee.Formatters.HTML,
     file: "benchmarks/output/tco_focussed_detailed_inputs.html", auto_open: false}
  ]
)

# ##### With input Small (10 Thousand) #####
# Name                                  ips        average  deviation         median         99th %
# tail +order (1.16.0-otp-26)       11.61 K       86.14 μs    ±39.59%       71.69 μs      130.56 μs
# tail (1.16.0-otp-26)              10.58 K       94.54 μs    ±42.39%       80.46 μs      139.95 μs
# tail (1.13.4-otp-24)              10.30 K       97.04 μs    ±31.81%       84.93 μs      142.59 μs
# tail +order (1.13.4-otp-24)       10.20 K       98.07 μs    ±45.23%       86.68 μs      143.83 μs
# body (1.16.0-otp-26)               9.03 K      110.77 μs    ±16.46%      107.40 μs      172.71 μs
# body (1.13.4-otp-24)               7.88 K      126.90 μs    ±13.03%      124.75 μs      181.97 μs
# tail +order (1.13.4-otp-23)        6.81 K      146.77 μs    ±47.72%      131.50 μs      230.53 μs
# tail (1.13.4-otp-23)               6.64 K      150.64 μs    ±34.56%      142.54 μs      241.88 μs
# body (1.6.6-otp-21)                6.37 K      156.89 μs    ±10.27%      156.09 μs      181.00 μs
# body (1.13.4-otp-23)               6.18 K      161.94 μs     ±3.33%      162.93 μs      169.08 μs
# tail +order (1.6.6-otp-21)         6.17 K      162.05 μs    ±84.91%      146.67 μs      241.95 μs
# tail (1.6.6-otp-21)                5.71 K      175.03 μs    ±22.88%      160.41 μs      254.31 μs

# Comparison:
# tail +order (1.16.0-otp-26)       11.61 K
# tail (1.16.0-otp-26)              10.58 K - 1.10x slower +8.40 μs
# tail (1.13.4-otp-24)              10.30 K - 1.13x slower +10.91 μs
# tail +order (1.13.4-otp-24)       10.20 K - 1.14x slower +11.93 μs
# body (1.16.0-otp-26)               9.03 K - 1.29x slower +24.63 μs
# body (1.13.4-otp-24)               7.88 K - 1.47x slower +40.77 μs
# tail +order (1.13.4-otp-23)        6.81 K - 1.70x slower +60.63 μs
# tail (1.13.4-otp-23)               6.64 K - 1.75x slower +64.50 μs
# body (1.6.6-otp-21)                6.37 K - 1.82x slower +70.75 μs
# body (1.13.4-otp-23)               6.18 K - 1.88x slower +75.80 μs
# tail +order (1.6.6-otp-21)         6.17 K - 1.88x slower +75.91 μs
# tail (1.6.6-otp-21)                5.71 K - 2.03x slower +88.89 μs

# Extended statistics:

# Name                                minimum        maximum    sample size                     mode
# tail +order (1.16.0-otp-26)        70.04 μs    14423.82 μs       462.14 K                 71.37 μs
# tail (1.16.0-otp-26)               76.16 μs    19395.46 μs       421.27 K                 80.00 μs
# tail (1.13.4-otp-24)               78.94 μs     9252.82 μs       409.84 K                 82.07 μs
# tail +order (1.13.4-otp-24)        79.87 μs    19279.01 μs       405.66 K                 83.60 μs
# body (1.16.0-otp-26)               84.60 μs     5028.91 μs       359.80 K                106.48 μs
# body (1.13.4-otp-24)              105.05 μs     5061.36 μs       313.90 K                122.45 μs
# tail +order (1.13.4-otp-23)       100.51 μs    28157.68 μs       271.40 K                128.95 μs
# tail (1.13.4-otp-23)              117.28 μs    19240.45 μs       264.48 K                142.29 μs
# body (1.6.6-otp-21)               109.65 μs     3380.30 μs       253.96 K                145.83 μs
# body (1.13.4-otp-23)              135.09 μs     1485.58 μs       246.13 K                163.19 μs
# tail +order (1.6.6-otp-21)        127.74 μs    66516.35 μs       245.80 K                144.86 μs
# tail (1.6.6-otp-21)               125.81 μs     8922.42 μs       227.66 K                157.50 μs

# Memory usage statistics:

# Name                           Memory usage
# tail +order (1.16.0-otp-26)       223.98 KB
# tail (1.16.0-otp-26)              223.98 KB - 1.00x memory usage +0 KB
# tail (1.13.4-otp-24)              223.98 KB - 1.00x memory usage +0 KB
# tail +order (1.13.4-otp-24)       223.98 KB - 1.00x memory usage +0 KB
# body (1.16.0-otp-26)              156.25 KB - 0.70x memory usage -67.73438 KB
# body (1.13.4-otp-24)              156.25 KB - 0.70x memory usage -67.73438 KB
# tail +order (1.13.4-otp-23)       224.02 KB - 1.00x memory usage +0.0313 KB
# tail (1.13.4-otp-23)              224.02 KB - 1.00x memory usage +0.0313 KB
# body (1.6.6-otp-21)               156.25 KB - 0.70x memory usage -67.73438 KB
# body (1.13.4-otp-23)              156.25 KB - 0.70x memory usage -67.73438 KB
# tail +order (1.6.6-otp-21)        224.03 KB - 1.00x memory usage +0.0469 KB
# tail (1.6.6-otp-21)               224.03 KB - 1.00x memory usage +0.0469 KB

# **All measurements for memory usage were the same**

# ##### With input Middle (100 Thousand) #####
# Name                                  ips        average  deviation         median         99th %
# tail +order (1.16.0-otp-26)        825.81        1.21 ms    ±33.45%        1.16 ms        2.88 ms
# body (1.16.0-otp-26)               822.00        1.22 ms    ±13.52%        1.13 ms        1.57 ms
# tail (1.16.0-otp-26)               766.53        1.30 ms    ±31.56%        1.25 ms        2.96 ms
# tail +order (1.13.4-otp-24)        712.41        1.40 ms    ±26.97%        1.37 ms        2.42 ms
# body (1.6.6-otp-21)                699.70        1.43 ms    ±11.88%        1.44 ms        1.71 ms
# body (1.13.4-otp-24)               691.32        1.45 ms    ±10.68%        1.54 ms        1.64 ms
# tail +order (1.13.4-otp-23)        640.52        1.56 ms    ±30.32%        1.87 ms        2.13 ms
# tail (1.13.4-otp-24)               631.19        1.58 ms    ±42.50%        1.35 ms        3.42 ms
# body (1.13.4-otp-23)               630.23        1.59 ms    ±11.94%        1.53 ms        1.84 ms
# tail +order (1.6.6-otp-21)         601.84        1.66 ms    ±27.21%        1.78 ms        2.18 ms
# tail (1.13.4-otp-23)               572.54        1.75 ms    ±27.02%        2.05 ms        2.29 ms
# tail (1.6.6-otp-21)                517.27        1.93 ms    ±23.81%        2.18 ms        2.55 ms

# Comparison:
# tail +order (1.16.0-otp-26)        825.81
# body (1.16.0-otp-26)               822.00 - 1.00x slower +0.00561 ms
# tail (1.16.0-otp-26)               766.53 - 1.08x slower +0.0936 ms
# tail +order (1.13.4-otp-24)        712.41 - 1.16x slower +0.193 ms
# body (1.6.6-otp-21)                699.70 - 1.18x slower +0.22 ms
# body (1.13.4-otp-24)               691.32 - 1.19x slower +0.24 ms
# tail +order (1.13.4-otp-23)        640.52 - 1.29x slower +0.35 ms
# tail (1.13.4-otp-24)               631.19 - 1.31x slower +0.37 ms
# body (1.13.4-otp-23)               630.23 - 1.31x slower +0.38 ms
# tail +order (1.6.6-otp-21)         601.84 - 1.37x slower +0.45 ms
# tail (1.13.4-otp-23)               572.54 - 1.44x slower +0.54 ms
# tail (1.6.6-otp-21)                517.27 - 1.60x slower +0.72 ms

# Extended statistics:

# Name                                minimum        maximum    sample size                     mode
# tail +order (1.16.0-otp-26)         0.69 ms        5.84 ms        33.01 K         0.70 ms, 1.17 ms
# body (1.16.0-otp-26)                0.86 ms        3.81 ms        32.87 K                  1.13 ms
# tail (1.16.0-otp-26)                0.76 ms        5.92 ms        30.64 K                  0.79 ms
# tail +order (1.13.4-otp-24)         0.80 ms        4.59 ms        28.48 K1.38 ms, 1.37 ms, 1.37 ms
# body (1.6.6-otp-21)                 1.04 ms        4.74 ms        27.97 K         1.40 ms, 1.40 ms
# body (1.13.4-otp-24)                1.25 ms        3.95 ms        27.64 K         1.31 ms, 1.31 ms
# tail +order (1.13.4-otp-23)         1.00 ms        4.73 ms        25.61 K                  1.00 ms
# tail (1.13.4-otp-24)                0.80 ms        6.29 ms        25.23 K                  1.35 ms
# body (1.13.4-otp-23)                1.19 ms        4.75 ms        25.20 K1.52 ms, 1.52 ms, 1.51 ms
# tail +order (1.6.6-otp-21)          1.03 ms        4.89 ms        24.06 K                  1.21 ms
# tail (1.13.4-otp-23)                1.18 ms        4.38 ms        22.89 K                  1.28 ms
# tail (1.6.6-otp-21)                 1.08 ms        4.70 ms        20.68 K                  1.45 ms

# Memory usage statistics:

# Name                           Memory usage
# tail +order (1.16.0-otp-26)         2.90 MB
# body (1.16.0-otp-26)                1.53 MB - 0.53x memory usage -1.37144 MB
# tail (1.16.0-otp-26)                2.90 MB - 1.00x memory usage +0 MB
# tail +order (1.13.4-otp-24)         2.93 MB - 1.01x memory usage +0.0354 MB
# body (1.6.6-otp-21)                 1.53 MB - 0.53x memory usage -1.37144 MB
# body (1.13.4-otp-24)                1.53 MB - 0.53x memory usage -1.37144 MB
# tail +order (1.13.4-otp-23)         2.89 MB - 1.00x memory usage -0.01099 MB
# tail (1.13.4-otp-24)                2.93 MB - 1.01x memory usage +0.0354 MB
# body (1.13.4-otp-23)                1.53 MB - 0.53x memory usage -1.37144 MB
# tail +order (1.6.6-otp-21)          2.89 MB - 1.00x memory usage -0.00793 MB
# tail (1.13.4-otp-23)                2.89 MB - 1.00x memory usage -0.01099 MB
# tail (1.6.6-otp-21)                 2.89 MB - 1.00x memory usage -0.00793 MB

# **All measurements for memory usage were the same**

# ##### With input Big (1 Million) #####
# Name                                  ips        average  deviation         median         99th %
# tail (1.13.4-otp-24)                42.81       23.36 ms    ±32.47%       23.17 ms       42.25 ms
# tail +order (1.13.4-otp-24)         42.32       23.63 ms    ±32.63%       23.22 ms       47.82 ms
# tail (1.16.0-otp-26)                41.12       24.32 ms    ±32.68%       24.16 ms       45.75 ms
# tail +order (1.16.0-otp-26)         37.64       26.57 ms    ±37.10%       24.30 ms       55.67 ms
# tail (1.13.4-otp-23)                35.19       28.42 ms    ±26.07%       30.08 ms       53.20 ms
# tail +order (1.6.6-otp-21)          35.17       28.44 ms    ±27.21%       29.43 ms       53.07 ms
# tail +order (1.13.4-otp-23)         34.19       29.25 ms    ±25.98%       30.78 ms       55.98 ms
# tail (1.6.6-otp-21)                 31.35       31.90 ms    ±24.08%       32.91 ms       55.63 ms
# body (1.13.4-otp-23)                28.50       35.09 ms     ±4.29%       34.96 ms       40.64 ms
# body (1.6.6-otp-21)                 28.13       35.54 ms     ±5.12%       35.33 ms       39.13 ms
# body (1.16.0-otp-26)                25.20       39.69 ms     ±3.77%       39.51 ms       45.88 ms
# body (1.13.4-otp-24)                20.36       49.12 ms     ±9.81%       46.16 ms       59.79 ms

# Comparison:
# tail (1.13.4-otp-24)                42.81
# tail +order (1.13.4-otp-24)         42.32 - 1.01x slower +0.27 ms
# tail (1.16.0-otp-26)                41.12 - 1.04x slower +0.96 ms
# tail +order (1.16.0-otp-26)         37.64 - 1.14x slower +3.21 ms
# tail (1.13.4-otp-23)                35.19 - 1.22x slower +5.06 ms
# tail +order (1.6.6-otp-21)          35.17 - 1.22x slower +5.08 ms
# tail +order (1.13.4-otp-23)         34.19 - 1.25x slower +5.89 ms
# tail (1.6.6-otp-21)                 31.35 - 1.37x slower +8.54 ms
# body (1.13.4-otp-23)                28.50 - 1.50x slower +11.73 ms
# body (1.6.6-otp-21)                 28.13 - 1.52x slower +12.19 ms
# body (1.16.0-otp-26)                25.20 - 1.70x slower +16.33 ms
# body (1.13.4-otp-24)                20.36 - 2.10x slower +25.76 ms

# Extended statistics:

# Name                                minimum        maximum    sample size                     mode
# tail (1.13.4-otp-24)                8.29 ms       65.94 ms         1.71 K                 23.11 ms
# tail +order (1.13.4-otp-24)         8.45 ms       65.76 ms         1.69 K                 15.33 ms
# tail (1.16.0-otp-26)                7.82 ms       64.09 ms         1.64 K                 15.53 ms
# tail +order (1.16.0-otp-26)         7.05 ms       68.81 ms         1.50 K       33.94 ms, 23.57 ms
# tail (1.13.4-otp-23)               11.46 ms       72.28 ms         1.41 K                     None
# tail +order (1.6.6-otp-21)         11.16 ms       63.04 ms         1.41 K                 19.38 ms
# tail +order (1.13.4-otp-23)        11.87 ms       73.34 ms         1.37 K                 20.03 ms
# tail (1.6.6-otp-21)                13.36 ms       66.24 ms         1.25 K                     None
# body (1.13.4-otp-23)               18.40 ms       56.39 ms         1.14 K                     None
# body (1.6.6-otp-21)                18.30 ms       54.74 ms         1.13 K                 36.85 ms
# body (1.16.0-otp-26)               19.45 ms       57.97 ms         1.01 K                     None
# body (1.13.4-otp-24)               19.33 ms       73.72 ms            814                     None

# Memory usage statistics:

# Name                           Memory usage
# tail (1.13.4-otp-24)               26.95 MB
# tail +order (1.13.4-otp-24)        26.95 MB - 1.00x memory usage +0 MB
# tail (1.16.0-otp-26)               26.95 MB - 1.00x memory usage +0.00015 MB
# tail +order (1.16.0-otp-26)        26.95 MB - 1.00x memory usage +0.00015 MB
# tail (1.13.4-otp-23)               26.95 MB - 1.00x memory usage +0.00029 MB
# tail +order (1.6.6-otp-21)         26.95 MB - 1.00x memory usage +0.00031 MB
# tail +order (1.13.4-otp-23)        26.95 MB - 1.00x memory usage +0.00029 MB
# tail (1.6.6-otp-21)                26.95 MB - 1.00x memory usage +0.00031 MB
# body (1.13.4-otp-23)               15.26 MB - 0.57x memory usage -11.69537 MB
# body (1.6.6-otp-21)                15.26 MB - 0.57x memory usage -11.69537 MB
# body (1.16.0-otp-26)               15.26 MB - 0.57x memory usage -11.69537 MB
# body (1.13.4-otp-24)               15.26 MB - 0.57x memory usage -11.69537 MB

# **All measurements for memory usage were the same**

# ##### With input Giant (10 Million) #####
# Name                                  ips        average  deviation         median         99th %
# tail (1.16.0-otp-26)                 8.44      118.43 ms    ±25.23%      110.19 ms      296.45 ms
# tail +order (1.16.0-otp-26)          8.15      122.71 ms    ±40.10%      101.89 ms      302.95 ms
# tail (1.13.4-otp-24)                 7.12      140.41 ms    ±39.30%      112.32 ms      356.12 ms
# tail +order (1.13.4-otp-24)          6.88      145.28 ms    ±39.93%      113.28 ms      366.83 ms
# tail +order (1.13.4-otp-23)          5.60      178.64 ms    ±29.81%      153.58 ms      371.48 ms
# tail (1.13.4-otp-23)                 5.29      189.21 ms    ±29.32%      162.98 ms      363.66 ms
# tail +order (1.6.6-otp-21)           4.30      232.74 ms    ±29.56%      212.91 ms      441.94 ms
# tail (1.6.6-otp-21)                  4.12      242.68 ms    ±27.45%      226.51 ms      451.71 ms
# body (1.6.6-otp-21)                  2.59      386.18 ms     ±7.76%      383.58 ms      456.80 ms
# body (1.13.4-otp-23)                 2.43      411.26 ms     ±8.01%      409.19 ms      477.56 ms
# body (1.13.4-otp-24)                 2.27      440.47 ms     ±9.29%      437.06 ms      520.69 ms
# body (1.16.0-otp-26)                 2.22      450.96 ms     ±7.91%      448.25 ms      518.60 ms

# Comparison:
# tail (1.16.0-otp-26)                 8.44
# tail +order (1.16.0-otp-26)          8.15 - 1.04x slower +4.28 ms
# tail (1.13.4-otp-24)                 7.12 - 1.19x slower +21.98 ms
# tail +order (1.13.4-otp-24)          6.88 - 1.23x slower +26.85 ms
# tail +order (1.13.4-otp-23)          5.60 - 1.51x slower +60.21 ms
# tail (1.13.4-otp-23)                 5.29 - 1.60x slower +70.78 ms
# tail +order (1.6.6-otp-21)           4.30 - 1.97x slower +114.31 ms
# tail (1.6.6-otp-21)                  4.12 - 2.05x slower +124.25 ms
# body (1.6.6-otp-21)                  2.59 - 3.26x slower +267.76 ms
# body (1.13.4-otp-23)                 2.43 - 3.47x slower +292.83 ms
# body (1.13.4-otp-24)                 2.27 - 3.72x slower +322.04 ms
# body (1.16.0-otp-26)                 2.22 - 3.81x slower +332.53 ms

# Extended statistics:

# Name                                minimum        maximum    sample size                     mode
# tail (1.16.0-otp-26)               80.64 ms      334.23 ms            337                     None
# tail +order (1.16.0-otp-26)        72.13 ms      443.32 ms            326                     None
# tail (1.13.4-otp-24)               84.98 ms      415.21 ms            285                     None
# tail +order (1.13.4-otp-24)        85.21 ms      410.71 ms            275                112.96 ms
# tail +order (1.13.4-otp-23)       101.73 ms      402.91 ms            224                     None
# tail (1.13.4-otp-23)              116.42 ms      425.61 ms            212                     None
# tail +order (1.6.6-otp-21)        114.97 ms      513.15 ms            172                     None
# tail (1.6.6-otp-21)               123.12 ms      499.76 ms            165                     None
# body (1.6.6-otp-21)               175.10 ms      457.30 ms            104                     None
# body (1.13.4-otp-23)              178.04 ms      477.56 ms             97                     None
# body (1.13.4-otp-24)              193.66 ms      520.69 ms             91                     None
# body (1.16.0-otp-26)              193.93 ms      518.60 ms             89                     None

# Memory usage statistics:

# Name                           Memory usage
# tail (1.16.0-otp-26)              303.85 MB
# tail +order (1.16.0-otp-26)       303.85 MB - 1.00x memory usage +0 MB
# tail (1.13.4-otp-24)              301.64 MB - 0.99x memory usage -2.21191 MB
# tail +order (1.13.4-otp-24)       301.64 MB - 0.99x memory usage -2.21191 MB
# tail +order (1.13.4-otp-23)       303.79 MB - 1.00x memory usage -0.06104 MB
# tail (1.13.4-otp-23)              303.79 MB - 1.00x memory usage -0.06104 MB
# tail +order (1.6.6-otp-21)        303.77 MB - 1.00x memory usage -0.07690 MB
# tail (1.6.6-otp-21)               303.77 MB - 1.00x memory usage -0.07690 MB
# body (1.6.6-otp-21)               152.59 MB - 0.50x memory usage -151.25967 MB
# body (1.13.4-otp-23)              152.59 MB - 0.50x memory usage -151.25967 MB
# body (1.13.4-otp-24)              152.59 MB - 0.50x memory usage -151.25967 MB
# body (1.16.0-otp-26)              152.59 MB - 0.50x memory usage -151.25967 MB
