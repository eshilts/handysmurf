\name{tablena}
\alias{tablena}
\title{Easy Way to Include NAs in Table Statements}
\usage{
  tablena(...)
}
\arguments{
  \item{\dots}{usual parameters passed to \code{table}}
}
\value{
  \code{table()}
}
\description{
  Equivalent to \code{table(..., useNA='ifany')}
}
\note{
  Part of a suite of Opower packages
}
\examples{
tablena(c(rep(1:5, 5), NA, NA, NA))
}
\author{
  Erik Shilts
}
\seealso{
  \code{\link{table}}
}

