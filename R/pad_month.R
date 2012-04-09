#' Pad Month Field with Zeroes
#'
#' Pads month field with zeroes.
#' @param month vector of month values
#' @author Erik Shilts
#' @export
#' @examples
#' pad_month(1:12)
pad_month <- function(month)
  formatC(month, flag='0', width=2)
