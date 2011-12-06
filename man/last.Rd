\name{last}
\alias{last}
\title{Peek at the last row of a dataframe. Pretty clever name, no?}
\usage{
  last(dat)
}
\arguments{
  \item{dat}{a dataframe}
}
\value{
  the last row of a dataframe
}
\description{
  Equivalent to tail(dat, n = 1)
}
\note{
  Part of a suite of Opower packages
}
\examples{
temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
last(temp)
}
\author{
  Erik Shilts
}
\seealso{
  \code{\link{first}}
}

