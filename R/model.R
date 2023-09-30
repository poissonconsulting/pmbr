#' PMB Model
#'
#' Creates object inherting from class `"pmb_model"`.
#'
#' @param code Passed on to [pmb_code()], using `{{ }}`.
#' @param ... Passed on to [model()].
#'
#' @return An object inheriting from class `"pmb_model"`.
#' @export
pmb_model <- function(
    code,
    ...) {

  code <- pmb_code({{ code }})
  check_pmb_code(code)

  model <- model(code = code[[1]], ...)
  new_pmb_model(model, code)
}

#' Low-level PMB model constructor
#'
#' @param model An object of class `"mb_model"`.
#' @param code An object of class `"pmb_code"`.
#'
#' @export
new_pmb_model <- function(model, code) {
  structure(list(model = model, code = code), class = c("pmb_model"))
}
