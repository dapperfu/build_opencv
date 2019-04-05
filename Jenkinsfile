pipeline {
  agent any
  stages {
    stage('Git ') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_caffe.git')
      }
    }
    stage('Stage') {
      steps {
        sh 'git submodule update --init'
      }
    }
    stage('Build Caffe') {
      steps {
        sh 'make dist'
      }
    }
  }
}