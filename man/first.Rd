\name{first}
\alias{first}
\title{First Row of a Dataframe}
\usage{
  first(dat)
}
\arguments{
  \item{dat}{a dataframe}
}
\value{
  the first row of a dataframe
}
\description{
  Equivalent to \code{head(dat, n = 1)}. Allows you to peek
  at the first line. Pretty clever name, no?
}
\note{
  Part of a suite of Opower packages
}
\examples{
temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
first(temp)
}
\author{
  Erik Shilts
}
\seealso{
  \code{\link{last}}
}

