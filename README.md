
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pipebind: Bind a (piped) object to a symbol for complex function evaluation

<!-- badges: start -->
<!-- badges: end -->

The base R `|>` pipe lacks some advanced functionality compared to the
`{magrittr}` `%>%` pipe. Most notably, the piped object can only appear
once on the right-hand side of the pipe (either as the first unnamed
argument or elsewhere using the `_` placeholder) and cannot be used with
some in-line functions (e.g., `+`).

The `|>` pipe had additional limitations in earlier versions of R (e.g.,
the `_` placeholder was not available before R 4.2.0; the `_`
placeholder could not appear on the left side of sub-setting functions
like `$`, `[`, `[[`, or `@` before R 4.3.0).

This package provides a `bind()` function as a way to conveniently
circumvent these limitations. Pipe an object into `bind()`, choose a
placeholder symbol to represent it, then use this placeholder to refer
the piped object in any way and as many times as desired in an R
expression.

The package also provides aliases for in-line functions like `+` and
`%in%` to facilitate their use with the `|>` pipe.

## Installation

You can install `{pipebind}` from CRAN:

``` r
install.packages("pipebind")
```

You can install the development version of `{pipebind}` like so:

``` r
remotes::install_github("bwiernik/pipebind")
```

## Examples

``` r
library(pipebind)

set.seed(2016)

# Piping to a non-first argument
mtcars |>
  transform(kmL = mpg / 2.35) |>
  bind(d, lm(kmL ~ hp, data = d))
#> 
#> Call:
#> lm(formula = kmL ~ hp, data = d)
#> 
#> Coefficients:
#> (Intercept)           hp  
#>    12.80803     -0.02903

# Using the piped value multiple times
rnorm(10) |>
  bind(x, x - mean(x))
#>  [1] -0.55014875  1.36584095  0.30817018  0.66123825 -2.42687776  0.08185269
#>  [7] -0.39891573 -0.32041684  0.73166705  0.54758995

# Using the piped value in multiple arguments
c(a = 1, b = 2, c = 3) |>
  bind(x, paste(names(x), x, sep = " = "))
#> [1] "a = 1" "b = 2" "c = 3"

# Subsetting the piped value
mtcars |>
  bind(d, d$mpg)
#>  [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2 10.4
#> [16] 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4 15.8 19.7
#> [31] 15.0 21.4
```

## Code of Conduct

Please note that the pipebind project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
