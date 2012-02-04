#' Creates Formula Object From Strings
#' Simplifies creation of a formula object given strings of variables names.
#'
#' @param lhs name of left hand side (dependent) variable; must be a singleton
#' @param rhs name(s) of right hand side (independent) variables
#' @author Erik Shilts
#' @export
create_formula <- function(lhs, rhs) {
  stopifnot(length(unique(lhs)) == 1)
  as.formula(sprintf('%s ~ %s', unique(lhs), paste(unique(rhs), collapse = '+')))
}
