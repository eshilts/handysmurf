#!/bin/sh
rm -rf man
bin/roxygenize.R
R CMD build .
R CMD check handysmurf*.tar.gz
