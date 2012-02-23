#' Remove NA Columns
#' Removes columns that consist of all NA values.
#' @param dat data frame that all NA columns will be removed from
#' @author Erik Shilts
#' @export
#' @examples
#' dat <- data.frame(w=1:10, x=2:11, y=1, z=NA)
#' identical(remove_NA_columns(dat), data.frame(w=1:10, x=2:11, y=1))
remove_NA_columns <- function(dat)
  dat[sapply(dat, function(x) !all(is.na(x)))]
