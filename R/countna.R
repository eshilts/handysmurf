#' Count NA Observations in a Dataframe
#' Counts the number of missing observations in each columns of a data.frame.
#'
#' @param dat input data.frame
#' @author Erik Shilts
#' @export
#' @examples
#' df <- data.frame(a = 1:10, b = rep(NA, 10), c=rep(c(1, NA), 5))
#' countna(df)
countna <- function(dat)
  sapply(dat, function(x) sum(is.na(x)))
