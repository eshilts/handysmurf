#' Convert a Text File to a Single String
#' Converts a file into a single character string. Useful
#' for importing a SQL query or other script to be run
#' in R.
#'
#' @param file_name file name to load (including path if not in working directory)
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
file_to_string <- function(file_name)
  paste(readLines(file_name), collapse=' ')
