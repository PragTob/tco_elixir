#!/usr/bin/env bash

set -e

rm -r benchmarks/output/saves/

# oldest elixir/otp I can get running easily
# pre JIT introduction, 1.13 to avoid elixir bag from 1.14 till 1.16.0-rc.0
# * For OTP building: https://github.com/asdf-vm/asdf-erlang/issues/257#issuecomment-1699023329
# post JIT introduction (OTP 24)
# Most current versions at time of writing
versions=("1.6.6-otp-21@21.3.8.24" "1.13.4-otp-23@23.3.4.19" "1.13.4-otp-24@24.3.4.14" "1.16.0-otp-26@26.2.1")

# Iterate over the array
for version in "${versions[@]}"; do
    # Split the version into two parts at the @
    IFS='@' read -r elixir erlang <<< "$version"

    echo
    echo "---------------$elixir-------------------"
    echo

    asdf local elixir $elixir
    asdf local erlang $erlang

    mix local.hex --force
    # recompile cos different erlang
    mix deps.clean --all
    mix deps.get
    mix compile

    TAG="$elixir" /usr/bin/time -v mix run benchmarks/tco_blog_post_focussed_inputs.exs
done

# And generate the report
/usr/bin/time -v mix run benchmarks/report.exs
