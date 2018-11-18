pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'echo building'
            }
        }
        stage('Test'){
            steps {
                sh 'echo testing'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo deploying'
            }
        }
    }
}
