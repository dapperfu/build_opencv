#!/usr/bin/env bash

OPENCV_VER=${OPENCV_VER:-4.0.1}

git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv.git
git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv_contrib.git


