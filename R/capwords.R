#' Change First Letter of Each Word to Uppercase
#' Changes the first letter of each word in a string to uppercase.
#' Includes options to specify the characters that separate each word, \code{split_char},
#' and whether to make all other characters lowercase.
#'
#' @param s vector of strings to transform
#' @param split_char characters(s) separating each word, default is one space
#' @param strict make all other characters lowercase? Default is FALSE.
#' @author Erik Shilts
#' @note Part of a suite of Opower packages
#' @export
capwords <- function(s, split_char = " ", strict = FALSE) {
    cap <- function(s) paste(toupper(substring(s,1,1)),
                  {s <- substring(s,2); if(strict) tolower(s) else s},
                             sep = "", collapse = " " )
    sapply(strsplit(s, split = split_char), cap, USE.NAMES = !is.null(names(s)))
}
