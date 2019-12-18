pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        git(poll: true, url: 'https://github.com/jed-frey/build_opencv.git')
      }
    }

    stage('Create Environment ') {
      parallel {
        stage('Create Environment ') {
          steps {
            sh '''
# Create Python environment & install dependencies.
make --directory=${WORKSPACE} env
'''
          }
        }

        stage('python_builds') {
          steps {
            sh '${WORKSPACE}/99_python_builds.sh'
          }
        }

      }
    }

    stage('OpenCV Checkout') {
      steps {
        timestamps() {
          sh '${WORKSPACE}/01_opencv_checkout.sh'
        }

      }
    }

    stage('CMake') {
      steps {
        timestamps() {
          sh '${WORKSPACE}/02_cmake.sh'
        }

      }
    }

    stage('Build') {
      steps {
        timestamps() {
          sh '${WORKSPACE}/03_build.sh'
        }

      }
    }

    stage('Package') {
      steps {
        timestamps() {
          sh '${WORKSPACE}/04_package.sh'
        }

      }
    }

    stage('Artifacts') {
      steps {
        archiveArtifacts(artifacts: '**.deb', allowEmptyArchive: true, fingerprint: true, onlyIfSuccessful: true)
      }
    }

  }
}