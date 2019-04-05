#!/usr/bin/env bash

WORKSPACE=${WORKSPACE:-`pwd`}
cd ${WORKSPACE}/build
make -j6
