#' Is MB Model?
#'
#' Tests whether x is an object of class 'mb_model'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.pmb_model <- function(x) {
  inherits(x, "mb_model")
}

#' Is MB Models?
#'
#' Tests whether x is an object of class 'mb_models'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.pmb_models <- function(x) {
  inherits(x, "mb_models")
}


#' Is MB Analysis?
#'
#' Tests whether x is an object of class 'mb_analysis'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.pmb_analysis <- function(x) {
  inherits(x, "mb_analysis")
}

#' Is MB Null Analysis?
#'
#' Tests whether x is an object of class 'mb_null_analysis'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.pmb_null_analysis <- function(x) {
  inherits(x, "mb_null_analysis")
}

#' Is MB Analyses?
#'
#' Tests whether x is an object of class 'mb_analyses'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.pmb_analyses <- function(x) {
  inherits(x, "mb_analyses")
}
