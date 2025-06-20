pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/deepakvsnv135/onlinebookstore.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}

