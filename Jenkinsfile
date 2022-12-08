pipeline {
    agent {
      docker {
        image 'node:19.2-alpine3.15'
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