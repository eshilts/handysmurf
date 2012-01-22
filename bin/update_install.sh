#!/bin/sh

cd $workspace/handysmurf
if [ `git name-rev --name-only HEAD` = 'master' ]
  then echo 'Already in branch master'
else
  echo 'Checking out master.'
  git checkout master
fi

git pull git@github.opower.com:eshilts/handysmurf.git master
bin/roxygenize.R
cd ..
echo 'Building handysmurf.'
R CMD BUILD handysmurf
cd ~
echo 'Installing handysmurf.'
R CMD INSTALL $workspace/handysmurf_0.1.tar.gz
cd $workspace/handysmurf
