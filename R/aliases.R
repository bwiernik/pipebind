#' Pipe-able aliases
#'
#' @description
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
#' **Extract and replace elements** \tab    \code{ }              \cr
#' \code{bracket}                   \tab    \code{`[`}            \cr
#' \code{double_bracket}            \tab    \code{`[[`}           \cr
#' \code{assign_bracket}            \tab    \code{`[<-`}          \cr
#' \code{assign_double_bracket}     \tab    \code{`[<-`}          \cr
#' \code{dollar}                    \tab    \code{`$`}            \cr
#' \code{at_sign}                   \tab    \code{`@`}            \cr
#' **Arithmetic operators**         \tab    \code{ }              \cr
#' \code{add}                       \tab    \code{`+`}            \cr
#' \code{subtract}                  \tab    \code{`-`}            \cr
#' \code{multiply}                  \tab    \code{`*`}            \cr
#' \code{divide}                    \tab    \code{`/`}            \cr
#' \code{integer_divide}            \tab    \code{`\%/\%`}        \cr
#' \code{mod}                       \tab    \code{`\%\%`}         \cr
#' \code{raise_to_power}            \tab    \code{`^`}            \cr
#' \code{matrix_multiply}           \tab    \code{`\%*\%`}        \cr
#' **Logical comparisons**          \tab    \code{ }              \cr
#' \code{and}                       \tab    \code{`&`}            \cr
#' \code{or}                        \tab    \code{`|`}            \cr
#' \code{not}                       \tab    \code{`!`}            \cr
#' \code{single_and}                \tab    \code{`&&`}           \cr
#' \code{single_or}                 \tab    \code{`||`}           \cr
#' \code{equals}                    \tab    \code{`==`}           \cr
#' \code{greater_than}              \tab    \code{`>`}            \cr
#' \code{greater_or_equal}          \tab    \code{`>=`}           \cr
#' \code{less_than}                 \tab    \code{`<`}            \cr
#' \code{less_or_equal}             \tab    \code{`<=`}           \cr
#' \code{is_in}                     \tab    \code{`\%in\%`}       \cr
#' **Assign attributes**            \tab    \code{ }              \cr
#' \code{assign_names}              \tab    \code{`names<-`}      \cr
#' \code{assign_colnames}           \tab    \code{`colnames<-`}   \cr
#' \code{assign_rownames}           \tab    \code{`rownames<-`}   \cr
#' \code{assign_dimnames}           \tab    \code{`dimnames<-`}   \cr
#' \code{assign_class}              \tab    \code{`class<-`}      \cr
#' \code{assign_attributes}         \tab    \code{`attributes<-`} \cr
#' \code{assign_attr}               \tab    \code{`attr<-`}       \cr
#' \code{assign_levels}             \tab    \code{`levels<-`}     \cr
#' \code{assign_contrasts}          \tab    \code{`contrasts<-`}  \cr
#' \code{assign_units}              \tab    \code{`units<-`}      \cr
#' \code{assign_comment}            \tab    \code{`comment<-`}    \cr
#' \code{assign_diag}               \tab    \code{`diag<-`}       \cr
#' \code{assign_dim}                \tab    \code{`dim<-`}        \cr
#' \code{assign_length}             \tab    \code{`length<-`}     \cr
#' \code{assign_as_na}              \tab    \code{`is.na<-`}      \cr
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
#'    matrix(dimnames = list(letters[1:10], "x")) |>
#'    matrix_multiply(seq(10, 100, by = 10))
#'
#' data.frame(1:10, letters[1:10]) |>
#'   assign_names(c("numbers", "letters"))
## Extract and replace elements
bracket <- `[`

#' @rdname aliases
#' @usage NULL
#' @export
double_bracket <- `[[`

#' @rdname aliases
#' @usage NULL
#' @export
assign_bracket <- `[<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_double_bracket <- `[[<-`

#' @rdname aliases
#' @usage NULL
#' @export
dollar <- `$`

#' @rdname aliases
#' @usage NULL
#' @export
at_sign <- `@`


## Arithmetic operators
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
multiply <- `*`

#' @rdname aliases
#' @usage NULL
#' @export
divide <- `/`

#' @rdname aliases
#' @usage NULL
#' @export
integer_divide <- `%/%`

#' @rdname aliases
#' @usage NULL
#' @export
mod <- `%%`

#' @rdname aliases
#' @usage NULL
#' @export
raise_to_power <- `^`

#' @rdname aliases
#' @usage NULL
#' @export
matrix_multiply <- `%*%`


## Logical comparisons
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
not <- `!`

#' @rdname aliases
#' @usage NULL
#' @export
single_and <- `&&`

#' @rdname aliases
#' @usage NULL
#' @export
single_or <- `||`

#' @rdname aliases
#' @usage NULL
#' @export
equals <- `==`

#' @rdname aliases
#' @usage NULL
#' @export
greater_than <- `>`

#' @rdname aliases
#' @usage NULL
#' @export
greater_or_equal <- `>=`

#' @rdname aliases
#' @usage NULL
#' @export
less_than <- `<`

#' @rdname aliases
#' @usage NULL
#' @export
less_or_equal <- `<=`

#' @rdname aliases
#' @usage NULL
#' @export
is_in <- `%in%`


## Assign attributes
#' @rdname aliases
#' @usage NULL
#' @export
assign_names <- `names<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_colnames <- `colnames<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_rownames <- `rownames<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_dimnames <- `dimnames<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_class <- `class<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_attributes <- `attributes<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_attr <- `attr<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_levels <- `levels<-`

#' @rdname aliases
#' @usage NULL
#' @export
# This structure is needed to avoid a spurious dependency warning with 'methods'
assign_contrasts <- function(x, how.many = NULL, value) stats::`contrasts<-`(x = x, how.many = how.many, value = value)

#' @rdname aliases
#' @usage NULL
#' @export
assign_units <- `units<-`

#' @rdname aliases
#' @usage NULL
#' @export
# This structure is needed to avoid a spurious warning about calling internals
assign_comment <- function(x, value) `comment<-`(x, value)

#' @rdname aliases
#' @usage NULL
#' @export
assign_diag <- `diag<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_dim <- `dim<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_length <- `length<-`

#' @rdname aliases
#' @usage NULL
#' @export
assign_as_na <- `is.na<-`
