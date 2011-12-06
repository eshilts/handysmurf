#!/usr/bin/env Rscript
system("echo 'roxygenizing the package.'")
library(roxygen2)
roxygenize('Ohandy', copy=FALSE)
