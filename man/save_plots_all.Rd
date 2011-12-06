\name{save_plots_all}
\alias{save_plots_all}
\title{Save Several Grid Plots to a File
Save several grid plots to a pdf file. The grid objects should be stored
in a list and ready to be printed to file. There will be a new page for
each plot in the list.}
\usage{
  save_plots_all(grobs, prefix, out_directory = "out",
  height = 8, width = 11)
}
\arguments{
  \item{grobs}{list of grid objects}

  \item{prefix}{string used to create the file name}

  \item{out_directory}{directory in which to store output}

  \item{height}{height (in inches) of output file (default
  is 8)}

  \item{width}{width (in inches) of output file (default is
  11)}
}
\description{
  Save Several Grid Plots to a File Save several grid plots
  to a pdf file. The grid objects should be stored in a
  list and ready to be printed to file. There will be a new
  page for each plot in the list.
}
\note{
  Part of a suite of Opower packages
}
\author{
  Erik Shilts
}

