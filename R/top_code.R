#' Set a Maximum Value for a Numeric Vector
#' Top codes a vector by setting a maximum value
#'
#' @param vec a numeric vector
#' @param level the maximum value; default is 100
#' @return a vector with all values > \code{level} set to \code{level}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' top_code(1:10, level=5)
#' top_code(1:10, level=11)
#' top_code(1:10, level=0)
#' @export
top_code <- function(vec, level=100) {
  ifelse(vec > level, level, vec)
}
