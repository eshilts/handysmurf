#' Quick Loading of R/S Source Files
#' Quickly load R and S source files. The default behavior is to source files in the R directory 
#' ending in .r, .s, .R, or .S from the current path. The function allows the user to specify a different
#' path and to change the file endings. However, it currently only works with one letter file endings.
#'
#' @author Erik Shilts
#' @export
load_functions <- function(path='R', file_endings='rRsS') {
  loginfo('Loading functions.')
  lapply(grep(concat('*[.][', file_endings, ']$'), list.files(directory, full.names=TRUE), value=TRUE), FUN=source)

  return(TRUE)
}
