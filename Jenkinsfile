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
              sh 'rm -f ~/.dockercfg ~/.docker/config.json || true'
              docker.withRegistry("https://562234494789.dkr.ecr.us-east-1.amazonaws.com", "ecr:us-east-1:72a40934-a1e1-4eca-9210-f07a86a7afb3") {
                image = docker.build("ecs-demo")
                image.push()
              }
            }
          }
        }
    }
}