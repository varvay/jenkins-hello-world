pipeline {
    agent {
      docker {
        image 'node:19.2-alpine3.15'
        args '-p 3000:3000'
      }
    }
    stages {
        stage('Build') {
            steps {
              sh 'npm i'
            }
        }
    }
}