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
              sh 'node -v'
              sh 'npm install'
            }
        }
        stage('Test') {
          steps {
            sh 'npm start'
          }
        }
    }
}