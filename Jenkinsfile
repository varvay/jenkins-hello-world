pipeline {
    agent {
      docker {
        image 'node:18.12-alpine3.15'
        args '-u root:root'
      }
    }
    stages {
        stage('Build') {
            steps {
              sh 'node -v'
              sh 'npm install'
              sh 'npm run build'
              sh 'npm test'
            }
        }
        stage('Test') {
          steps {
            sh 'npm test'
          }
        }
    }
}