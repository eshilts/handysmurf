#!/bin/sh

cd $workspace/handysmurf
if [ `git name-rev --name-only HEAD` = 'master' ]
  then echo 'Already in branch master'
else
  git checkout master
fi

git pull git@github.opower.com:eshilts/handysmurf.git master
cd ..
handysmurf/bin/roxygenize.R
echo 'Building handysmurf.'
R CMD BUILD handysmurf
cd ~
echo 'Installing handysmurf.'
R CMD INSTALL $workspace/handysmurf_0.1.tar.gz
cd $workspace/handysmurf
