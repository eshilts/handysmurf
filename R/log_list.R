#' Helpful Logging of a List of Items
#' Constructs a single character string of items from a list for
#' easy logging to file. If multiple vectors are passed, the vectors
#' will concatenated vector-wise first and collapsed into a single
#' string second.
#'
#' @param \dots vectors of items from a list
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @examples
#' log_list(letters[1:4], 1:2)
#' log_list(letters[1:4], 1:2, sep_string='-sep-', collapse_string='~col~')
#' log_list(letters[1:4])
#' @export
log_list <- function(..., sep_string=':', collapse_string=', ')
  paste(..., sep=sep_string, collapse=collapse_string)
