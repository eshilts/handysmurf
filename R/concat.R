#' Paste Strings Without Having To Set sep = fucking ''
#'
#' Otherwise known as concatenate. Seriously, this should be obvious.
#'
#' @param \dots strings to concatenate
#' @return a concatenated string. meow.
#' @note Part of a suite of Opower packages
#' @author Yoni Ben-Smellshulam
#' @seealso \code{\link{paste}}
#' @examples
#' concat(LETTERS[1:5], letters[1:5])
#' @export
concat <- function(...) {
  paste(..., sep='')
}
