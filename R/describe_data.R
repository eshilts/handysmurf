# Functions to describe data

#' Sorted Names of a Dataframe
#' Equivalent to sort(names(x))
#'
#' @param dat a data.frame 
#' @return a vector of sorted column names
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @examples
#' temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
#' sn(temp)
#' @export
sn <- function(dat) {
  sort(names(dat))
}

#' Classes of Columns in a Dataframe
#'
#' Equivalent to \code{cbind(sapply(dataframe, class))}
#'
#' @param dat a data.frame 
#' @return a vector of class names
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
classes <- function(dat) {
  cbind(sapply(dat, class))
}

#' Useful Information on a Given Dataframe
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

#' Easy Way to Include NAs in Table Statements
#'
#' Equivalent to \code{table(..., useNA='ifany')}
#'
#' @param \dots usual parameters passed to \code{table}
#' @return \code{table()}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @seealso \code{\link{table}}
#' @examples
#' tablena(c(rep(1:5, 5), NA, NA, NA))
#' @export
tablena <- function(...) {
  table(..., useNA='ifany')
}

#' First Row of a Dataframe
#'
#' Equivalent to \code{head(dat, n = 1)}. Allows you to peek at the first line.
#' Pretty clever name, no?
#'
#' @param dat a dataframe
#' @return the first row of a dataframe
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @seealso \code{\link{last}}
#' @examples
#' temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
#' first(temp)
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
#' @examples
#' temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
#' last(temp)
#' @export
last <- function(dat) {
  tail(dat, n = 1)
}
