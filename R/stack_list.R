#' Stack List Elements
#' Shortcut to take several data frames or vectors and quickly stack them.
#' This is a shortcut for \code{do.call(rbind, list_data)}.
#'
#' @param list_data list of data frames to stack together
#' @author Erik Shilts
#' @export
stack_list <- function(list_data)
  do.call(rbind, list_data)
