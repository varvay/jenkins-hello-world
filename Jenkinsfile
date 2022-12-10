pipeline {
    agent none
    stages {
        // stage('Pre-configuration') {
        //   agent {
        //     docker {
        //       image 'node:lts-buster-slim'
        //       args '-u root:root'
        //     }
        //   }
        //   steps {
        //     sh 'npm install'
        //   }
        // }
        stage('Unit Test') {
          agent {
            docker {
              image 'node:lts-buster-slim'
              args '-u root:root'
            }
          }
          steps {
            sh 'npm test'
          }
        }
        stage('Build') {
          steps {
            script {
              docker.withRegistry("562234494789.dkr.ecr.us-east-1.amazonaws.com/demo-ecs") {
                image = docker.build("ecs-demo")
                image.push()
              }
            }
          }
        }
    }
}