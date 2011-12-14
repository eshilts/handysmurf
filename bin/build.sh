#!/bin/sh
./bin/roxygenize.R &&\
R CMD build . &&\
R CMD check Ohandy_*.tar.gz
