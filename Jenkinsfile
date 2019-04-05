pipeline {
  agent any
  stages {
    stage('Git ') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_opencv.git')
        sh '''git submodule update --init --depth=1 --jobs=4
git submodule foreach git submodule update --init --depth=1 --jobs=4'''
      }
    }
    stage('Build') {
      steps {
        timestamps() {
          sh '${WORKSPACE}/build.sh'
        }

      }
    }
  }
}