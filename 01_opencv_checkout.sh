#!/usr/bin/env bash

OPENCV_VER=${OPENCV_VER:-4.1.0}

if [ ! -d "opencv" ] ; then
git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv.git
fi

if [ ! -d "opencv_contrib" ] ; then
git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv_contrib.git
fi

