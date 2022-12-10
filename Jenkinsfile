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
              image = docker.build("ecs-demo")
            }
          }
        }
    }
}