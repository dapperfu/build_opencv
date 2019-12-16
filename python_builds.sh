#!/usr/bin/env bash

for OPENCV_VER in 4.1.2
do

# OpenCV Versions
export OPENCV_VER=${OPENCV_VER}
# Python versions
for PYTHON_VER in 3.8
do
    export PYTHON_EXECUTABLE=virtualenv_python${PYTHON_VER}/bin/${PYTHON_VER}
    export BUILD_DIR=build_${OPENCV_VER}_${PYTHON_VER}
    # Build
    mkdir -p ${BUILD_DIR}
    echo ${OPENCV_VER}
    echo ${PYTHON_VER}
    # Do Things.
    ./01_opencv_checkout.sh
    ./02_cmake.sh
    ./03_build.sh
    ./04_package.sh
done
done
