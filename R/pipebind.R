#' Bind a (piped) object to a symbol for complex function evaluation
#'
#' The base R \code{\link[base:pipeOp]{|>}} pipe lacks some advanced
#' functionality compared to the
#' \href{https://magrittr.tidyverse.org/reference/pipe.html}{\emph{magrittr} \code{%>%}}
#' pipe. For example, the piped object can only appear once on the right-hand
#' side of the pipe (either as the first argument or elsewhere using the \code{_}
#' placeholder in R 4.2.0 and later), and the \code{_} placeholder cannot appear
#' on the left side of sub-setting functions like `$`, `[`, `[[`, or `@`.
#'
#' The `bind()` function is a way to conveniently circumvent these limitations.
#' Pipe an object into `bind()`, choose a placeholder symbol to represent it,
#' then use this placeholder to refer the piped object in any way and as many
#' times as desired in an R expression.
#'
#' @param .pipeValue The object to bind. Typically specified by pipe into the
#'   `bind()` function (e.g., `x |> bind()`).
#' @param .pipeBind The placeholder symbol to use to represent the piped object.
#'   Can be any valid R object name.
#' @param ... An R expression. Any valid R code (expression).
#'
#' @return The results of the expression, evaluated using the piped object.
#'
#' @export
#'
#' @examples
#' if (getRversion() >= 4.1) {
#'
#'   # Piping to a non-first argument
#'   mtcars |>
#'     transform(kmL = mpg / 2.35) |>
#'     bind(d, lm(kmL ~ hp, data = d))
#'
#'   # Using the piped value multiple times
#'   rnorm(10, mean = 10) |>
#'     bind(x, x - mean(x))
#'
#'   # Using the piped value in multiple arguments
#'   c(a = 1, b = 2, c = 3) |>
#'     bind(x, paste(names(x), x, sep = " = "))
#'
#'   # Subsetting the piped value
#'   mtcars |>
#'     bind(d, d$mpg)
#' }
bind <- function(.pipeValue, .pipeBind, ...) {
  args <- alist(. = )
  names(args) = as.character(substitute(.pipeBind))
  .pipeFunction <- eval(
    expr = call(
      "function",
      as.pairlist(args),
      substitute(...)
    ),
    envir = parent.frame()
  )
  .pipeFunction(.pipeValue)
}

#' @rdname bind
#' @export
assign("\u03bb", bind)
