#!/usr/bin/env bash

export PATH_DEFAULT=${PATH}
for OPENCV_VER in 4.1.2
do
# OpenCV Versions
export OPENCV_VER=${OPENCV_VER}
# Python versions
for PYTHON_VER in 3.6 3.7 3.8
do
    # Setup virtualenvironment
    python${PYTHON_VER} -mvenv virtualenv_python${PYTHON_VER}
    # Setup wheels andu pdate pip.
    virtualenv_python${PYTHON_VER}/bin/pip install -U pip wheel
    # Install build requirements
    virtualenv_python${PYTHON_VER}/bin/pip install -r requirements.txt
    # Set Path
    export PATH=$(realpath virtualenv_python${PYTHON_VER}):${PATH_DEFAULT}
    # Set Python Executable Path.
    export PYTHON_EXECUTABLE=$(realpath virtualenv_python${PYTHON_VER}/bin/python${PYTHON_VER})
    # Set Build Dir / target directory.
    export BUILD_DIR=opencv_${OPENCV_VER}_py${PYTHON_VER}
    # Start over
    rm -rf ${BUILD_DIR}
    # Create Build Dir
    mkdir -p ${BUILD_DIR}
    # Do Things.
    ./01_opencv_checkout.sh
    ./02_cmake.sh
    ./03_build.sh
    ./05_install.sh
done
done
