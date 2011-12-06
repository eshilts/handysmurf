\name{sn}
\alias{sn}
\title{Sorted Names of a Dataframe
Equivalent to sort(names(x))}
\usage{
  sn(dat)
}
\arguments{
  \item{dat}{a data.frame}
}
\value{
  a vector of sorted column names
}
\description{
  Sorted Names of a Dataframe Equivalent to sort(names(x))
}
\note{
  Part of a suite of Opower packages
}
\examples{
temp <- data.frame(var2=1:10, var1=6:15, x=11:20, xy=16:25)
sn(temp)
}
\author{
  Erik Shilts
}

