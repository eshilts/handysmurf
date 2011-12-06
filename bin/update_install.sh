#!/bin/sh

cd $workspace/Ohandy
if [ `git name-rev --name-only HEAD` = 'master' ]
  then echo 'Already in branch master'
else
  git checkout master
fi

git pull git@github.opower.com:eshilts/Ohandy.git master
cd ..
bin/roxygenize.R
echo 'Building Ohandy.'
R CMD BUILD Ohandy
cd ~
echo 'Installing Ohandy.'
R CMD INSTALL $workspace/Ohandy_0.1.tar.gz
cd $workspace/Ohandy
