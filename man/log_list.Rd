\name{log_list}
\alias{log_list}
\title{Helpful Logging of a List of Items
Constructs a single character string of items from a list for
easy logging to file. If multiple vectors are passed, the vectors
will concatenated vector-wise first and collapsed into a single
string second.}
\usage{
  log_list(..., sep_string = ":", collapse_string = ", ")
}
\arguments{
  \item{\dots}{vectors of items from a list}

  \item{sep_string}{string to use for separating
  concatenated items}

  \item{collapse_string}{string used to separate items when
  collapsed into a single string}
}
\description{
  Helpful Logging of a List of Items Constructs a single
  character string of items from a list for easy logging to
  file. If multiple vectors are passed, the vectors will
  concatenated vector-wise first and collapsed into a
  single string second.
}
\note{
  Part of a suite of Opower packages
}
\examples{
log_list(letters[1:4], 1:2)
log_list(letters[1:4], 1:2, sep_string='-sep-', collapse_string='~col~')
log_list(letters[1:4])
}
\author{
  Erik Shilts
}

