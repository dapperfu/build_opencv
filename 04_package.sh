#!/usr/bin/env bash

BUILD_DIR=${BUILD_DIR:-build}
cd ${BUILD_DIR}
sudo checkinstall --default --type debian --install=no \
	--pkgname opencv_${OPENCV_VER}_${PYTHON_VER} --pkgversion ${OPENCV_VER}_${PYTHON_VER} \
	--deldoc --deldesc --delspec -pakdir ~ \
	--maintainer "`whoami`" --provides opencv_${OPENCV_VER}_${PYTHON_VER} \
	--addso --autodoinst make install
