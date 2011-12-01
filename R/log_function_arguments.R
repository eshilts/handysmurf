#' Helpful Logging of a Function's Arguments
#' Constructs a single character string the name of the calling function
#' and each of its arguments matched to their values. Function calls should
#' look like: \code{logdebug(log_function_arguments(match.call(expand.dots=TRUE)))}
#' or you can print the results instead of logging. Note that while the
#' value of arguments should never change, I haven't figured out a way to
#' set the default value in a usable way, since \code{arguments=match.call()} grabs
#' the arguments of \code{log_function_arguments} itself instead of the calling 
#' function.
#'
#' @param arguments should always be set to \code{match.call(expand.dots=TRUE)}
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
log_function_arguments <- function(arguments) {
  sprintf("Function [%s] arguments - %s", as.character(arguments[[1]]), log_list(names(arguments[-1]), arguments[-1]))
}
