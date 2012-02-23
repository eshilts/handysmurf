#!/bin/sh
bin/roxygenize.R
R CMD build .
R CMD check handysmurfy_*.tar.gz
