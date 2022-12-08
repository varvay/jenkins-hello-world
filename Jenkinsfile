pipeline {
    agent {
      docker {
        image 'node:lts-buster-slim'
        args '-u root:root'
      }
    }
    stages {
        stage('Pre-configuration') {
            steps {
              sh 'npm install'
            }
        }
        stage('Test') {
          steps {
            sh 'npm test'
          }
        }
    }
}