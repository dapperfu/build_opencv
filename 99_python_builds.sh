#!/usr/bin/env bash

for OPENCV_VER in 4.1.2
do

# OpenCV Versions
export OPENCV_VER=${OPENCV_VER}
# Python versions
for PYTHON_VER in 3.7 # 3.8
do
    python${PYTHON_VER} -mvenv virtualenv_python${PYTHON_VER}
    virtualenv_python${PYTHON_VER}/bin/pip install -U pip wheel
    virtualenv_python${PYTHON_VER}/bin/pip install -r requirements.txt
    export PYTHON_EXECUTABLE=virtualenv_python${PYTHON_VER}/bin/${PYTHON_VER}
    export BUILD_DIR=opencv_${OPENCV_VER}_${PYTHON_VER}
    # Build
    mkdir -p ${BUILD_DIR}
    echo ${OPENCV_VER}
    echo ${PYTHON_VER}
    # Do Things.
    ./01_opencv_checkout.sh
    ./02_cmake.sh
    ./03_build.sh
    sudo ./05_install.sh
done
done
