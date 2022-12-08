pipeline {
    agent {
      docker {
        image 'node:lts-buster-slim'
        args '-u jenkins:jenkins'
      }
    }
    stages {
        stage('Build') {
            steps {
              sh 'node -v'
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