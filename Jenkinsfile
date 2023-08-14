pipeline {
    agent any

    environment {
        FIRSTNAME = "Pankaj"
        LASTNAME = "Kumar"
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
        stage('Test'){
            steps{
                echo 'testing'
            }
        }
        stage('Hello') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh $FIRSTNAME $LASTNAME > welcome.txt'
            }
        }
        
    }
}
