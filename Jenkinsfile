pipeline {
    agent {
      docker {
        image 'node:lts-buster-slim'
        args '-u root:root'
      }
    }
    stages {
        stage('Build') {
            steps {
              sh 'npm cache clean --force'
              sh 'node -v'
              sh 'npm install'
            }
        }
        stage('Test') {
          steps {
            sh 'npm cache clean --force'
            sh 'npm test'
          }
        }
    }
}