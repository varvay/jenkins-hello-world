pipeline {
    agent {
      docker {
        image 'node:19.2-alpine3.15'
        args '-u root:root'
      }
    }
    stages {
        stage('Build') {
            steps {
              sh 'node -v'
              sh 'npm install'
              sh 'npm run build'
            }
        }
        stage('Test') {
          steps {
            sh 'npm test'
          }
        }
    }
}