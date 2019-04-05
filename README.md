# build_opencv
Git Repository to build a recent OpenCV4, with python integration.

# Usage

## Jenkins

1. Fork.
2. Add to Jenkins.

## Manumatic.

    git clone https://github.com/jed-frey/build_opencv.git
    cd build_opencv
    git submodule update --init --jobs=6
    git submodule foreach git submodule update --init --jobs=6
    
