#!/bin/sh
bin/roxygenize.R
R CMD BUILD .
R CMD CHECK Ohandy_*.tar.gz
