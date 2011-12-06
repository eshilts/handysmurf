\name{RemoveDupes}
\alias{RemoveDupes}
\title{Remove Duplicates From a Dataset
Removes duplicated rows from a dataframe}
\usage{
  RemoveDupes(dat)
}
\arguments{
  \item{dat}{a data.frame}
}
\value{
  a data frame with no duplicate rows
}
\description{
  Remove Duplicates From a Dataset Removes duplicated rows
  from a dataframe
}
\note{
  Part of a suite of Opower packages
}
\examples{
temp <- data.frame(a=c(1:10, 1:5), b=c(6:15, 6:10))
RemoveDupes(temp)
}
\author{
  Erik Shilts
}

