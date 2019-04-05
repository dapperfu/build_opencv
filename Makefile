# Config
HOST_PYTHON:=python3.7

# Environments to setup for this project
# Available options: python arduino
ENVS:=python

## make_sandwich includes
# https://github.com/jed-frey/make_sandwich
include .mk_inc/env.mk

OPENCV_VER?=4.0.1

opencv:
	git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv.git


opencv_contrib:
	git clone --recurse-submodules --branch=${OPENCV_VER} --depth=1 https://github.com/opencv/opencv_contrib.git


.PHONY: src
src: opencv opencv_contrib

.PHONY: clean.src
clean.src:
	rm -rf opencv opencv_contrib
