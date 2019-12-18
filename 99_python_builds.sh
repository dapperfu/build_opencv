#!/usr/bin/env bash

for OPENCV_VER in 4.1.2
do

# OpenCV Versions
export OPENCV_VER=${OPENCV_VER}
# Python versions
for PYTHON_VER in 3.5 3.6 3.7 3.8
do
    python${PYTHON_VER} -mvenv virtualenv_python${PYTHON_VER}
    virtualenv_python${PYTHON_VER}/bin/pip install -U pip wheel
    virtualenv_python${PYTHON_VER}/bin/pip install -r requirements.txt
    export $PATH:$(realpath virtualenv_python${PYTHON_VER})
    export PYTHON_EXECUTABLE=$(realpath virtualenv_python${PYTHON_VER}/bin/python${PYTHON_VER})
    echo PYTHON_EXECUTABLE=$PYTHON_EXECUTABLE
    export BUILD_DIR=opencv_${OPENCV_VER}_py${PYTHON_VER}
    # Build
    mkdir -p ${BUILD_DIR}
    echo ${OPENCV_VER}
    echo ${PYTHON_VER}
    # Do Things.
    ./01_opencv_checkout.sh
    ./02_cmake.sh
    ./03_build.sh
    ./05_install.sh
done
done
