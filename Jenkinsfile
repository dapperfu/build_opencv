pipeline {
  agent any
  stages {
    stage('Git ') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_opencv.git')
        sh '''
# Checkout OpenCV Source
make  --directory=${WORKSPACE} src
'''
      }
    }
    stage('Create Environment ') {
      steps {
        sh '''
# Create Python environment & install dependencies.
make  --directory=${WORKSPACE} env
'''
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
