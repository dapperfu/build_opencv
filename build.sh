#!/bin/sh
HERE=`pwd`

mkdir ${HERE}/build
cd ${HERE}/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D INSTALL_C_EXAMPLES=OFF \
	-D OPENCV_ENABLE_NONFREE=ON \
	-D OPENCV_EXTRA_MODULES_PATH=${HERE}/opencv_contrib/modules \
	-D PYTHON_DEFAULT_EXECUTABLE=${HERE}/bin/python \
	-D PYTHON_EXECUTABLE=${HERE}/bin/python \
	-D PYTHON2_EXECUTABLE=`which python2` \
	-D BUILD_EXAMPLES=ON ${HERE}/opencv

make -j6
