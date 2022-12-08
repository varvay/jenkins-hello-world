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
              sh 'npm -v'
              sh 'npm i'
            }
        }
        stage('Test') {
          steps {
            sh 'npm t'
          }
        }
    }
}