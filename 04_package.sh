#!/usr/bin/env bash

WORKSPACE=${WORKSPACE:-`pwd`}
cd ${WORKSPACE}/build
sudo checkinstall --default --type debian --install=no \
	--pkgname opencv4 --pkgversion "4.0.1" --pkglicense BSD \
	--deldoc --deldesc --delspec -pakdir ~ \
	--maintainer "`whoami`" --provides opevcv4 \
	--addso --autodoinst make install
