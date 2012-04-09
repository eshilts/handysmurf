#' Sample a Dataframe on a Given Variable
#' Samples a data frame by returning all rows for the N
#' unique sample variable.
#' 
#' @param dat dataframe to sample from
#' @param var_name variable to sample on
#' @param num_sample number of unique values of var_name
#' @author Erik Shilts
#' @export
#' @examples
#' dat <- data.frame(x=rep(letters[1:5], 5), y=1:25)
#' sample_on_variable(dat, 'x', 3) 
sample_on_variable <- function(dat, var_name, num_sample = 10) {
  stopifnot(var_name %in% names(dat))

  unique_var <- unique(dat[, var_name])
  unique_num <- length(unique_var)

  if(unique_num <= num_sample)
    return(dat)

  dat[dat[, var_name] %in% sample(unique_var, num_sample), ]
} 
