\name{save_plots_each}
\alias{save_plots_each}
\title{Save Each Grid Plot to a File
Save several grid plots, each to an individual PNG file. The grid objects should
be stored in a list and ready to be printed to file. There will be a new file for
each plot in the list.}
\usage{
  save_plots_each(grobs, prefix, out_directory = "out", res
  = 250, height = 8, width = 11)
}
\arguments{
  \item{grobs}{list of grid objects}

  \item{prefix}{string used to create the file name}

  \item{out_directory}{directory in which to store output}

  \item{res}{resolution of output file (default is 250)}

  \item{height}{height (in inches) of output file (default
  is 8)}

  \item{width}{width (in inches) of output file (default is
  11)}
}
\description{
  Save Each Grid Plot to a File Save several grid plots,
  each to an individual PNG file. The grid objects should
  be stored in a list and ready to be printed to file.
  There will be a new file for each plot in the list.
}
\note{
  Part of a suite of Opower packages
}
\author{
  Erik Shilts
}

