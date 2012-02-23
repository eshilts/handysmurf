#' Remove Constant Columns
#' Removes columns that consist of a single value for all rows.
#' @param dat data frame that constant columns will be removed from
#' @author Erik Shilts
#' @export
#' @examples
#' dat <- data.frame(w=1:10, x=2:11, y=1, z=NA)
#' identical(remove_constant_columns(dat), data.frame(w=1:10, x=2:11))
remove_constant_columns <- function(dat)
  dat[sapply(dat, function(x) !all(x == x[1] | is.na(x)))]
