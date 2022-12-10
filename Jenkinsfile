pipeline {
    agent {
      docker {
        image 'node:lts-buster-slim'
        args '-u root:root'
      }
    }
    stages {
        stage('Pre-configuration') {
            steps {
              sh 'npm install'
            }
        }
        stage('Unit Test') {
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