############################
# Functions to change data

#' Remove duplicates from dataset
#'
#' Removes duplicated rows from a dataframe
#'
#' @param dat a data.frame 
#' @return a data frame with no duplicate rows
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
RemoveDupes <- function(dat) {
  dat[!duplicated(dat),]
}

#' Set a maximum value for a numeric vector
#'
#' Top codes a vector by setting a maximum value
#'
#' @param vec a numeric vector
#' @param level the maximum value. The default is 100.
#' @return a vector with all values > level set to level
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
TopCode <- function(vec, level=100) {
  ifelse(vec > level, level, vec)
}

#' Set a minimum value for a numeric vector
#'
#' Bottom codes a vector by setting a minimum value
#'
#' @param vec a numeric vector
#' @param level the minimum value. Default is 0.
#' @return a vector with all values < level set to level
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @export
BottomCode <- function(vec, level=0) {
  ifelse(vec < level, level, vec)
}

#' A way to paste strings together without having to set sep = fucking '' over and over again.
#'
#' Seriously, this should be obvious.
#'
#' @param ... strings to concatenate
#' @return a concatenated string. meow.
#' @note Part of a suite of Opower packages
#' @author Yoni Ben-Smellshulam
#' @seealso \code{\link{paste}}
#' @export
concat <- function(...) {
  paste(..., sep='')
}
