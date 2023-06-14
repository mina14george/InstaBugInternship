pipeline {
    agent any

    environment {
        Image_Name = "$DOCKER_USERNAME/instabuginternship_app:1"
    }

    stages {
        stage('Build') {
            steps {
                echo "Building..."
                sh 'docker-compose down && docker-compose up'
            }
        }

        stage('Push') {
            steps {
                echo "Logging in to Docker Hub"
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                }

                echo "Pushing the image..."
                sh "docker push $Image_Name"
            }
        }
    }
}

