#' Easy Dubug Logging
#' Streamlined debug logging using sprintf. Unfortunately,
#' this function is dependent on the logging package and setting
#' the log level to debug.
#'
#' @param \dots arguments for logging using \code{sprintf} 
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
lds <- function(...)
  logdebug(sprintf(...))
