#' Deparses a Formula to Convert to a String
#' @description Takes a formula object and creates a string for easy printing
#' @param ff formula object
#' @param nlines number of lines to output
#' @param width width of output
#' @return string of the formula
#' @author Tyler Curtis
#' @export
formula_to_string <- function(ff, nlines=1, width=500L)
  deparse(ff, nlines = nlines, width = width)
