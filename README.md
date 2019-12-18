# OpenCV 4.x.x on Python 3.6, 3.7, 3.8

Because you deserve a modern development environment.

Script to build modern version of OpenCV, with non-free contributed modules enabled.

Installs to:

    /opt/opencv_4.1.2_py3.6/
    /opt/opencv_4.1.2_py3.7/
    /opt/opencv_4.1.2_py3.8/
    
# Usage

## Jenkins

1. Fork.
2. Add to Jenkins.

## Manumatic.

    git clone https://github.com/jed-frey/build_opencv.git
    cd build_opencv
    git submodule update --init --jobs=6
    git submodule foreach git submodule update --init --jobs=6
    
