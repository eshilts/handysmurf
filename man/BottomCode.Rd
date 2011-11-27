\name{BottomCode}
\alias{BottomCode}
\title{Set a Minimum Value For a Numeric Vector}
\usage{
  BottomCode(vec, level = 0)
}
\arguments{
  \item{vec}{a numeric vector}

  \item{level}{the minimum value; default is 0}
}
\value{
  a vector with all values < \code{level} set to
  \code{level}
}
\description{
  Bottom codes a vector by setting a minimum value
}
\note{
  Part of a suite of Opower packages
}
\examples{
BottomCode(1:10, level=5)
BottomCode(1:10, level=11)
BottomCode(1:10, level=0)
}
\author{
  Erik Shilts
}

