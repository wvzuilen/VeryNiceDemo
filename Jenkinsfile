pipeline {
    agent any
    environment {
                AWS_KEY_PATH  = credentials('AWS_KEY_PATH')
                AWS_HOST      = credentials('AWS_HOST')
            }
    stages {
        stage('Build') {
            steps {
                echo 'Building without cache...'
                sh 'docker login'
                sh 'docker build --no-cache -t wvzuilen/verynicedemo:latest .'
            }
        }
        stage('Push') {
            steps {
                echo 'Pushing to Docker Hub...'
                sh 'docker push wvzuilen/verynicedemo:latest'
            }
        }
        stage('Restart') {
            steps {
                echo 'Restarting VeryNiceDemo containers...'
                sh 'ssh -o StrictHostKeyChecking=No -i $(AWS_KEY_PATH) $(AWS_HOST) /home/ubuntu/restart.sh'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
