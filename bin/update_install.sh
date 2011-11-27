#!/bin/sh

cd $workspace/Ohandy
git checkout master
git pull git@github.opower.com:OPOWER/Ohandy.git master
cd ..
R CMD BUILD Ohandy
cd ~
R CMD INSTALL $workspace/Ohandy_0.1.tar.gz
cd $workspace/Ohandy
