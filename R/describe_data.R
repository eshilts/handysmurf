# Functions to describe data

#' Get the sorted names of a dataframe
#'
#' Equivalent to sort(names(x))
#'
#' @param dat a data.frame 
#' @return a vector of sorted column names
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
sn <- function(dat) {
  sort(names(dat))
}

#' Get the classes of columns in a dataframe
#'
#' Equivalent to cbind(sapply(dataframe, class))
#'
#' @param dat a data.frame 
#' @return a vector of class names
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
classes <- function(dat) {
  cbind(sapply(dat, class))
}

#' Get useful information on a given dataframe
#'
#' Returns a dataframe with the names of each of the columns, the class, and number of missing observations
#'
#' @param dat a data frame
#' @return a data frame with three columns
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
DFInfo <- function(dat) {
  df <- data.frame(vars = names(dat),
                   class = classes(dat),
                   missing = sapply(dat, function(x) sum(is.na(x))))
  df[order(df$vars),]
}

#' An easy way to include NAs in table statements
#'
#' Equivalent to table(..., useNA='ifany')
#'
#' @param ... usual parameters passed to table 
#' @return table ( )
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @seealso \code{\link{table}}
#' @export
tablena <- function(...) {
  table(..., useNA='ifany')
}

#' Peek at the first row of a dataframe. Pretty clever name, no?
#'
#' Equivalent to head(dat, n = 1)
#'
#' @param dat a dataframe
#' @return the first row of a dataframe
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @seealso \code{\link{last}}
#' @export
first <- function(dat) {
  head(dat, n = 1)
}

#' Peek at the last row of a dataframe. Pretty clever name, no?
#'
#' Equivalent to tail(dat, n = 1)
#'
#' @param dat a dataframe
#' @return the last row of a dataframe
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @seealso \code{\link{first}}
#' @export
last <- function(dat) {
  tail(dat, n = 1)
}


