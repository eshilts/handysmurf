\name{ls.objects}
\alias{ls.objects}
\title{Useful Version of Objects in Memory - Expanded
A quick way to see what objects were created in the R session and their sizes}
\usage{
  ls.objects(pos = 1, pattern, order.by, decreasing =
  FALSE, head = FALSE, n = 5)
}
\arguments{
  \item{pos}{an alternative to name in \code{ls}}

  \item{pattern}{regular expression to search for}

  \item{order.by}{the way to sort the data ("Type", "Size",
  "PrettySize", "Rows", "Columns")}

  \item{decreasing}{sort in decreasing order? Defaults to
  true.}

  \item{head}{Return just the first \code{n} elements?
  Defaults to FALSE}

  \item{n}{number of rows to return; default is 10}
}
\description{
  Useful Version of Objects in Memory - Expanded A quick
  way to see what objects were created in the R session and
  their sizes
}
\note{
  Part of a suite of Opower packages
}
\author{
  Erik Shilts - Shamelessly ripped from stackoverflow
}
\seealso{
  \code{\link{ls}}
}

