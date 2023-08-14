pipeline {
    agent any

    environment {
        FIRSTNAME = "Pankaj"
        LASTNAME = "Kumar"
        // PASSWORD = credentials('ubuntu')
        PASSWORD = "Pankaj@123"
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
                sh("sudo -p ${PASSWORD} usermod -a -G docker jenkins")
                sh 'docker build -t myimage .'
            }
        }
    }
}
