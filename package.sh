#!/usr/bin/env bash


WORKSPACE=${WORKSPACE:-`pwd`}
OPENCV_VER=`git --git-dir=${WORKSPACE}/opencv/.git describe --tags | cut -f1 -d-`

cd ${WORKSPACE}/build

sudo checkinstall --default --type debian --install=no --pkgname opencv4 --pkgversion "${OPENCV_VER}" --pkglicense BSD --deldoc --deldesc --delspec -pakdir ~ --maintainer "`whoami`" --provides opevcv4 --addso --autodoinst make install
