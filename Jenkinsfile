pipeline {
    agent none
    stages {
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
              sh 'npm run build'
              docker.withRegistry("https://562234494789.dkr.ecr.us-east-1.amazonaws.com", "ecr:us-east-1:72a40934-a1e1-4eca-9210-f07a86a7afb3") {
                image = docker.build("demo-ecs", "--no-cache .")
                image.push("latest")
              }
            }
          }
        }
        stage('Deploy') {
          agent any
          steps {
            script {
              withAWS(credentials: "72a40934-a1e1-4eca-9210-f07a86a7afb3"){
                sh 'aws ecs update-service --cluster demo-ecs --service demo-ecs --force-new-deployment'
              }
            }
          }
        }
    }
}