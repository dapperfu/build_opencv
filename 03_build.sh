#!/usr/bin/env bash

BUILD_DIR=${BUILD_DIR:-build}
cd ${BUILD_DIR}
make -j6
