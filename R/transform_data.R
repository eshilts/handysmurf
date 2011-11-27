############################
# Functions to change data

#' Remove Duplicates From a Dataset
#'
#' Removes duplicated rows from a dataframe
#'
#' @param dat a data.frame 
#' @return a data frame with no duplicate rows
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @examples
#' temp <- data.frame(a=c(1:10, 1:5), b=c(6:15, 6:10))
#' RemoveDupes(temp)
#' @export
RemoveDupes <- function(dat) {
  dat[!duplicated(dat),]
}

#' Set a Maximum Value for a Numeric Vector
#'
#' Top codes a vector by setting a maximum value
#'
#' @param vec a numeric vector
#' @param level the maximum value; default is 100
#' @return a vector with all values > \code{level} set to \code{level}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' TopCode(1:10, level=5)
#' TopCode(1:10, level=11)
#' TopCode(1:10, level=0)
#' @export
TopCode <- function(vec, level=100) {
  ifelse(vec > level, level, vec)
}

#' Set a Minimum Value For a Numeric Vector
#'
#' Bottom codes a vector by setting a minimum value
#'
#' @param vec a numeric vector
#' @param level the minimum value; default is 0
#' @return a vector with all values < \code{level} set to \code{level}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts
#' @examples
#' BottomCode(1:10, level=5)
#' BottomCode(1:10, level=11)
#' BottomCode(1:10, level=0)
#' @export
BottomCode <- function(vec, level=0) {
  ifelse(vec < level, level, vec)
}

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
