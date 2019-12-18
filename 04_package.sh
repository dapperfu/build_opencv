#!/usr/bin/env bash

BUILD_DIR=${BUILD_DIR:-opencv4}
PYTHON_VER=${PYTHON_VER:-3.8}
cd ${BUILD_DIR}
sudo checkinstall --default --type debian --install=no \
	--pkgname opencv4 --pkgversion 4.1.2 \
	--deldoc --deldesc --delspec -pakdir ~ \
	--maintainer "`whoami`" --provides opencv4 \
	--addso --autodoinst make install
