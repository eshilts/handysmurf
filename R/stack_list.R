#' Stack List Elements
#' Shortcut to take several data frames or vectors and quickly stack them.
#' This is a shortcut for \code{do.call(rbind, list_data)}.
#'
#' @author Erik Shilts
#' @export
stack_list <- function(list_data)
  do.call(rbind, list_data)
