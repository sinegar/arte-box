#!/bin/sh

# force python unicode character encoding 
export PYTHONIOENCODING=utf-8

## create working folder
mkdir /vagrant/dload
cd /vagrant/dload

# get the latest script
curl https://raw.github.com/solsticedhiver/arteVIDEOS/master/arteVIDEOS.py >arteVIDEOS.py

chmod +x arteVIDEOS.py
 
./arteVIDEOS.py $*
