#!/usr/bin/env bash

WORKSPACE=${WORKSPACE:-build}
cd build
make -j6
