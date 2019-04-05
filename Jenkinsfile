pipeline {
  agent any
  stages {
    stage('Git ') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_opencv.git')
      }
    }
  }
}
