#' Pipe-able aliases
#'
#' pipebind provides several aliases for unary/binary operators (e.g., `+`)
#' and replacement functions (e.g., `names<-()`) that facilitate using these
#' functions in a `|>` chain.
#'
#' Some unary/binary operators cannot currently be used with the `|>` pipe,
#' such as `+`, `-`, or `%*%`. These aliases provide a way to use these functions
#' with the `|>` pipe.
#'
#' Currently implemented aliases are
#' \tabular{ll}{
#' \code{extract}            \tab \code{`[`}      \cr
#' \code{extract2}           \tab \code{`[[`}     \cr
#' \code{inset}              \tab \code{`[<-`}    \cr
#' \code{inset2}             \tab \code{`[[<-`}   \cr
#' \code{use_series}         \tab \code{`$`}      \cr
#' \code{add}                \tab \code{`+`}      \cr
#' \code{subtract}           \tab \code{`-`}      \cr
#' \code{multiply_by}        \tab \code{`*`}      \cr
#' \code{raise_to_power}     \tab \code{`^`}      \cr
#' \code{multiply_by_matrix} \tab \code{`\%*\%`}  \cr
#' \code{divide_by}          \tab \code{`/`}      \cr
#' \code{divide_by_int}      \tab \code{`\%/\%`}  \cr
#' \code{mod}                \tab \code{`\%\%`}   \cr
#' \code{is_in}              \tab \code{`\%in\%`} \cr
#' \code{and}                \tab \code{`&`}      \cr
#' \code{or}                 \tab \code{`|`}      \cr
#' \code{equals}             \tab \code{`==`}     \cr
#' \code{is_greater_than}    \tab \code{`>`}      \cr
#' \code{is_weakly_greater_than} \tab \code{`>=`} \cr
#' \code{is_less_than}       \tab \code{`<`}      \cr
#' \code{is_weakly_less_than}    \tab \code{`<=`} \cr
#' \code{not} (\code{`n'est pas`})  \tab \code{`!`} \cr
#' \code{define_colnames}       \tab \code{`colnames<-`} \cr
#' \code{define_rownames}       \tab \code{`rownames<-`} \cr
#' \code{define_names}          \tab \code{`names<-`} \cr
#' \code{define_class}          \tab \code{`class<-`} \cr
#' \code{define_attributes}     \tab \code{`attributes<-`} \cr
#' \code{define_attr }          \tab \code{`attr<-`} \cr
#' }
#'
#' @note
#' Inspired and some alias names adapted from from *magrittr*.
#' Reused code Copyright (c) 2023 magrittr authors.
#'
#' @usage NULL
#' @export
#' @rdname aliases
#' @name bracket
#' @examples
#'  mtcars |>
#'    bracket(, 1:4)
#'
#'  1:10 |>
#'    add(5) |>
#'    matrix(dimnames = list(NULL, "x")) |>
#'    matrix_multiply(seq(10, 100, by = 10))
#'
#' data.frame(1:10, letters[1:10]) |>
#'   define_names(c("numbers", "letters"))
#' good.times$quarter <-
#'   good.times %>%
#'   use_series(timestamp) %>%
#'   format("%M") %>%
#'   as.numeric %>%
#'   divide_by_int(15) %>%
#'   add(1)
bracket <- `[`

#' @rdname aliases
#' @usage NULL
#' @export
double_bracket <- `[[`

#' @rdname aliases
#' @usage NULL
#' @export
dollar <- `$`

#' @rdname aliases
#' @usage NULL
#' @export
at_sign <- pull_slot <- `@`

#' @rdname aliases
#' @usage NULL
#' @export
add <- `+`

#' @rdname aliases
#' @usage NULL
#' @export
subtract <- `-`

#' @rdname aliases
#' @usage NULL
#' @export
multiply_by <- `*`

#' @rdname aliases
#' @usage NULL
#' @export
multiply_by_matrix <-
  matrix_multiply <-
  `%*%`


#' @rdname aliases
#' @usage NULL
#' @export
divide_by <- `/`

#' @rdname aliases
#' @usage NULL
#' @export
divide_by_int <- `%/%`

#' @rdname aliases
#' @usage NULL
#' @export
raise_to_power <-
  raise_to <-
  `^`

#' @rdname aliases
#' @usage NULL
#' @export
and <- `&`

#' @rdname aliases
#' @usage NULL
#' @export
or <- `|`

#' @rdname aliases
#' @usage NULL
#' @export
mod <- `%%`

#' @rdname aliases
#' @usage NULL
#' @export
is_in <- `%in%`

#' @rdname aliases
#' @usage NULL
#' @export
equals <- `==`

#' @rdname aliases
#' @usage NULL
#' @export
is_greater_than <- `>`

#' @rdname aliases
#' @usage NULL
#' @export
is_greater_or_equal <-
  `>=`

#' @rdname aliases
#' @usage NULL
#' @export
is_less_than <- `<`

#' @rdname aliases
#' @usage NULL
#' @export
is_less_or_equal <-
  `<=`

#' @rdname aliases
#' @usage NULL
#' @export
not <- `!`

#' @rdname aliases
#' @usage NULL
#' @export
define_colnames <- `colnames<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_rownames <- `rownames<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_names <- `names<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_class <- `class<-`

#' @rdname aliases
#' @usage NULL
#' @export
inset <-
  define_bracket <-
  `[<-`

#' @rdname aliases
#' @usage NULL
#' @export
double_inset <-
  define_double_bracket <-
  `[[<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_attr <- `attr<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_attributes <- `attributes<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_levels <- `levels<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_contrasts <- `contrasts<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_dimnames <- `dimnames<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_as_missing <- `is.na<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_units <- `units<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_comment <- `comment<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_diag <- `diag<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_dim <- `dim<-`

#' @rdname aliases
#' @usage NULL
#' @export
define_length <- `length<-`
