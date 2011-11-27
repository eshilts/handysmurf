#' Save Several Grid Plots to a File
#' Save several grid plots to a pdf file. The grid objects should be stored
#' in a list and ready to be printed to file. There will be a new page for
#' each plot in the list.
#'
#' @param grobs list of grid objects
#' @param prefix string used to create the file name
#' @param out_directory directory in which to store output
#' @param height height (in inches) of output file (default is 8)
#' @param width width (in inches) of output file (default is 11)
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
save_plots_all <- function(grobs, prefix, out_directory='out', height=8, width=11) {
  file_name <- file.path(out, paste(prefix, '_all.pdf', sep=''))
  pdf(file=file_name, height=height, width=width, units='in')
    print(grobs)
  dev.off()
  
  return(TRUE)
}

#' Save Each Grid Plot to a File
#' Save several grid plots, each to an individual PNG file. The grid objects should
#' be stored in a list and ready to be printed to file. There will be a new file for
#' each plot in the list.
#'
#' @param grobs list of grid objects
#' @param prefix string used to create the file name
#' @param out_directory directory in which to store output
#' @param res resolution of output file (default is 250)
#' @param height height (in inches) of output file (default is 8)
#' @param width width (in inches) of output file (default is 11)
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
save_plots_each <- function(grobs, prefix, out_directory='out', res=250, height=8, width=11) {
  for(i in names(grobs)) {
    file_name <- file.path(out, paste(prefix, '_each_', i, '.png', sep=''))
    png(file=file_name, res=res, height=height, width=width, units='in')
      print(grobs[[i]])
    dev.off()
  }
  
  return(TRUE)
}
