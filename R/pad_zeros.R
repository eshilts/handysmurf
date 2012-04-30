#' Pad Leading Zeros
#' @description Pads a Vector of Integers with Leading Zeros
#' @param dat input vector
#' @param width width of output padding
#' @return vector with leading zeros
#' @export
#' @examples
#' pad_zeros(1:12, width=2)
#' pad_zeros(c(1, 100), width=2)
#' pad_zeros(c(1, 100), width=3)
pad_zeros <- function(dat, width=2)
  formatC(dat, width=width, flag='0')
