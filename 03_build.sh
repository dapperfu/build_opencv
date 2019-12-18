#!/usr/bin/env bash

BUILD_DIR=${BUILD_DIR:-opencv4}
cd ${BUILD_DIR}
make -j6
