#' Load File From Package
#' @export
#' @param package package name
#' @directory directory path (e.g. 'sql')
#' @file_name name of file
load_file_from_package <- function(package, directory, file_name)
  file_to_string(system.file(package=package, directory, file_name))
