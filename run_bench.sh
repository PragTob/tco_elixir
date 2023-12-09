#!/usr/bin/env bash

set -e
set -x

# clean up potentially old benchee saves
rm -f benchmarks/saves/tco_*.benchee

# yes yes, this should/could be a loop but I'm lazy!
# Elixir compatibility

# oldest elixir/otp I can get running easily
asdf local elixir 1.6.6-otp-21
asdf local erlang 21.3.8.24

mix local.hex --force
mix deps.clean --all
mix deps.get

TAG="1.6-21" mix run benchmarks/tco_blog_post_focussed_inputs.exs


# most modern pre jit (OTP 24 introduced the jit)
# For OTP building: https://github.com/asdf-vm/asdf-erlang/issues/257#issuecomment-1699023329
asdf local elixir 1.14.5-otp-23
asdf local erlang 23.3.4.19

mix local.hex --force
mix deps.clean --all
mix deps.get

TAG="1.14-23" mix run benchmarks/tco_blog_post_focussed_inputs.exs

# JIT introduction
asdf local elixir 1.14.5-otp-24
asdf local erlang 24.3.4.14

mix local.hex --force
mix deps.clean --all
mix deps.get

TAG="1.14-24" mix run benchmarks/tco_blog_post_focussed_inputs.exs

# Bleeding edge
asdf local elixir 1.16.0-rc.0-otp-26
asdf local erlang 26.1.2

mix local.hex --force
mix deps.clean --all
mix deps.get

TAG="1.16-26" mix run benchmarks/tco_blog_post_focussed_inputs.exs

# And generate the report
mix run benchmarks/report.exs
