#' Remove Duplicates From a Dataset
#' Removes duplicated rows from a dataframe
#'
#' @param dat a data.frame 
#' @return a data frame with no duplicate rows
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @examples
#' temp <- data.frame(a=c(1:10, 1:5), b=c(6:15, 6:10))
#' remove_dupes(temp)
#' @export
remove_dupes <- function(dat) {
  dat[!duplicated(dat),]
}
