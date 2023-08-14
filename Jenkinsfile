pipeline {
    agent any

    environment {
        FIRSTNAME = "Pankaj"
        LASTNAME = "Kumar"
        WHOAMI = sh 'whoami'
    }
    
    stages {
        stage('Build'){
            steps{
                sh 'echo "My first pipeline"'
                sh '''
                    echo "By the way, I can do more stuff in here"
                    ls -lah
                '''
            }
        }
        stage('Script') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh $FIRSTNAME $LASTNAME > welcome.txt'
            }
        }
        stage('Build Docker Image'){
            steps {
                sh 'sudo usermod -a -G docker $WHOAMI'
                sh 'docker build -t myimage .'
            }
        }
    }
}
