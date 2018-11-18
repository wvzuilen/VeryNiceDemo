pipeline {
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps {
                sh 'echo testing'
            }
        }
        stage(‘Deploy Image’) {
          steps{
            script {
              docker.withRegistry('https://registry.hub.docker.com', 'Docker') {
                dockerImage.push()
              }
            }
          }
        }
    }
}
