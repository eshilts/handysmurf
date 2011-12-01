# Utility functions

#' Source Files Without Echoing
#' Small time-saver with an obvious name.
#'
#' @param \dots files to source and other options for source( )
#' @return sources files
#' @note Part of a suite of Opower packages
#' @author Yoni Ben-Smellshulam
#' @seealso \code{\link{source}}
#' @export
SourceNoEcho <- function(...) {
  source(..., echo = FALSE)
}

#' Quit the R Session Without Saving Your Workspace
#'
#' The save workspace[y/n] prompt is fucking annoying. Avoid it with \code{qn()}
#' @param \dots other parameters for \code{qn()}
#' @note Part of a suite of Opower packages
#' @author Erik Shilts - Shamelessly ripped from stackoverflow
#' @seealso \code{\link{q}}
#' @export
qn <- function(...) {
  q(..., save='no')
}

#' Useful Version of Objects in Memory
#' A quick way to see what objects were created in the R session and their sizes
#'
#' @param \dots parameters to pass to \code{lsos}
#' @param n number of rows to return; default is 10
#' @note Part of a suite of Opower packages
#' @author Erik Shilts - Shamelessly ripped from stackoverflow
#' @seealso \code{\link{ls}}
#' @export
lsos <- function(..., n=10) {
  ls.objects(..., order.by="Size", decreasing=TRUE, head=TRUE, n=n)
}

#' Useful Version of Objects in Memory - Expanded
#' A quick way to see what objects were created in the R session and their sizes
#'
#' @param pos an alternative to name in \code{ls}
#' @param pattern regular expression to search for
#' @param order.by the way to sort the data ("Type", "Size", "PrettySize", "Rows", "Columns")
#' @param decreasing sort in decreasing order? Defaults to true.
#' @param head Return just the first \code{n} elements? Defaults to FALSE
#' @param n number of rows to return; default is 10
#' @note Part of a suite of Opower packages
#' @author Erik Shilts - Shamelessly ripped from stackoverflow
#' @seealso \code{\link{ls}}
#' @export
ls.objects <- function (pos = 1, pattern, order.by, decreasing=FALSE, head=FALSE, n=5) {
  napply <- function(names, fn) sapply(names, function(x) fn(get(x, pos = pos)))
  names <- ls(pos = pos, pattern = pattern)
  obj.class <- napply(names, function(x) as.character(class(x))[1])
  obj.mode <- napply(names, mode)
  obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
  obj.prettysize <- napply(names, function(x) { capture.output(print(object.size(x), units = "auto")) })
  obj.size <- napply(names, object.size)
  obj.dim <- t(napply(names, function(x) as.numeric(dim(x))[1:2]))
  vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
  obj.dim[vec, 1] <- napply(names, length)[vec]
  out <- data.frame(obj.type, obj.size, obj.prettysize, obj.dim)
  names(out) <- c("Type", "Size", "PrettySize", "Rows", "Columns")
  if (!missing(order.by))
    out <- out[order(out[[order.by]], decreasing=decreasing), ]
  if (head) out <- head(out, n)
  out
}
