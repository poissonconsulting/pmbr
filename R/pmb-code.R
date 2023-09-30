#' PMB Code
#'
#' Captures the model description targeting one or several engine, or written
#' in the pmbr language that is modeled closely after the NIMBLE language.
#'
#' @param ...
#'   Named strings, unevaluated expressions, or [mb_code()] objects,
#'   or a single unnamed string, unevaluated expressions, or `"pmb_code"` object.
#'   Expressions of the form `c(...)` and `list(...)` with named dots
#'   are also recognized, for use in [pmb_model()].
#'
#' @return An object inheriting from class `"pmb_code"`: a named list of
#'   `"mb_code"` objects or quoted expressions.
#' @export
pmb_code <- function(...) {
  quos <- enquos(...)
  if (!is_named(quos) && length(quos) == 1) {
    out <- pmb_code_unnamed(quos[[1]])
  } else {
    chk_named(quos, "...")
    out <- map(quos, pmb_code_quo)
  }

  new_pmb_code(out)
}

pmb_code_unnamed <- function(quo) {
  expr <- quo_get_expr(quo)
  if (is_string(expr)) {
    code <- mb_code(expr)
    name <- sub("_code$", "r", class(code)[[1]])
    list2(!!name := code)
  } else if (expr[[1]] == "{") {
    list(pmbr = expr)
  } else if (expr[[1]] == "c" || expr[[1]] == "list") {
    quos <- map(as.list(expr[-1]), new_quosure, quo_get_env(quo))
    map(quos, pmb_code_quo)
  } else {
    out <- eval_tidy(quo)
    stopifnot(is.pmb_code(out))
    out
  }
}

pmb_code_quo <- function(quo) {
  expr <- quo_get_expr(quo)
  if (is_string(expr)) {
    mb_code(expr)
  } else if (expr[[1]] == "{") {
    expr
  } else {
    eval_tidy(quo)
  }
}

new_pmb_code <- function(x) {
  chk_list(x)
  chk_named(x)
  structure(x, class = "pmb_code")
}

is.pmb_code <- function(x) {
  inherits(x, "pmb_code")
}

check_pmb_code <- function(object, object_name = substitute(object)) {
  if (!is.character(object_name)) object_name <- deparse(object_name)

  if (!is.pmb_code(object)) err(object_name, " must inherit from class mb_code", tidy = FALSE)
  object
}
