#' Set a Minimum Value For a Numeric Vector
#' Bottom codes a vector by setting a minimum value
#'
#' @param vec a numeric vector
#' @param level the minimum value; default is 0
#' @return a vector with all values < \code{level} set to \code{level}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @examples
#' bottom_code(1:10, level=5)
#' bottom_code(1:10, level=11)
#' bottom_code(1:10, level=0)
#' @export
bottom_code <- function(vec, level=0) {
  ifelse(vec < level, level, vec)
}
