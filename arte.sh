#!/bin/sh
export PYTHONIOENCODING=utf-8

mkdir /vagrant/dload
cd /vagrant/dload

curl https://raw.github.com/solsticedhiver/arteVIDEOS/master/arteVIDEOS.py >arteVIDEOS.py

chmod +x arteVIDEOS.py 

./arteVIDEOS.py $*
