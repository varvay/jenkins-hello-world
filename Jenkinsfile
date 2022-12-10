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
          agent any
          steps {
            script {
              sh 'AWS_ACCESS_KEY_ID=AKIAYFZ6JR5CYYSA645T AWS_SECRET_ACCESS_KEY=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 aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 562234494789.dkr.ecr.us-east-1.amazonaws.com'
              docker.withRegistry("https://562234494789.dkr.ecr.us-east-1.amazonaws.com/demo-ecs", "ecr:us-east-1:72a40934-a1e1-4eca-9210-f07a86a7afb3") {
                image = docker.build("ecs-demo")
                image.push()
              }
            }
          }
        }
    }
}