pipeline {
  agent any
  stages {
    stage('Git ') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_opencv.git')
      }
    }
    stage('Stage') {
      steps {
        sh 'git submodule update --init'
      }
    }
    stage('Stage') {
      steps {
        sh 'make env'
      }
    }
    stage('Build OpenCV') {
      steps {
        sh './build.sh'
      }
    }
  }
}
