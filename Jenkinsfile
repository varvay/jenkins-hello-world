pipeline {
    agent {
      docker {
        image 'node:19.2-alpine3.15'
      }
    }
    stages {
        stage('Hello World') {
            steps {
                echo 'Hello World v0.1'
            }
        }
    }
}