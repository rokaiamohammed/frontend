pipeline {
    agent {
        docker {
            image 'node:12.17-alpine' 
            args '-p 80:3000' 
        }
      
    }  
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
		
    }
}