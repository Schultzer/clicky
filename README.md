# Clicky
[![CircleCI](https://circleci.com/gh/Schultzer/clicky.svg?style=svg)](https://circleci.com/gh/Schultzer/clicky)

## Introduction and Getting Started

`clicky` is a wrapper around [Clicky API](https://clicky.com/help/api).

## Examples
```elixir
iex> Clicky.visitor_list()
{:ok, result}

iex> Clicky.visitor_list(country: "us")
{:ok, result}

iex> Clicky.custom(type: "action-list")
{:ok, result}
```

For help in `iex`:

```elixir
iex> h Clicky.custom
```

## Documentation
[hex documentation for clicky](https://hexdocs.pm/clicky)


## Installation

Note that `:clicky` requires Elixir 1.5 or later.

Add `clicky` as a dependency to your `mix` project:

```elixir
    defp deps do
      [
        {:clicky, "~> 0.1"}
      ]
    end
```

## LICENSE

(The MIT License)

Copyright (c) 2017 Benjamin Schultzer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

