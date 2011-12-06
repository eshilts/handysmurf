\name{TopCode}
\alias{TopCode}
\title{Set a Maximum Value for a Numeric Vector
Top codes a vector by setting a maximum value}
\usage{
  TopCode(vec, level = 100)
}
\arguments{
  \item{vec}{a numeric vector}

  \item{level}{the maximum value; default is 100}
}
\value{
  a vector with all values > \code{level} set to
  \code{level}
}
\description{
  Set a Maximum Value for a Numeric Vector Top codes a
  vector by setting a maximum value
}
\note{
  Part of a suite of Opower packages
}
\author{
  Erik Shilts TopCode(1:10, level=5) TopCode(1:10,
  level=11) TopCode(1:10, level=0)
}

