pipeline {
   agent any
   tools {nodejs "nodejs"}
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deliver for development') {
            steps {
                sh'chmod u+r+x development.sh'
                sh './development.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh'chmod u+r+x kill.sh'
                sh './kill.sh'
            }
        }
        stage('Deploy for production') {
            steps {
                sh'chmod u+r+x Production.sh'
                sh './Production.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh'chmod u+r+x kill.sh'
                sh './kill.sh'
            }
        }
    }
    post {
    success {
        mail bcc: '', body: '''Hi, 

        The pipeline at Jenkins Finished SUCCESSFULY for front end. 

        Thanks!''', cc: '', from: '', replyTo: '', subject: 'The pipeline Finished SUCCESSFULY!', to: 'rokaia.mohamed111099@gmail.com'

     
    }

    failure {
        mail bcc: '', body: "Project: The pipeline at Jenkins has failed. Pleas go over to the Jenkins and check it out.", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name" , to: "rokaia.mohamed111099@gmail.com";  
        mail bcc: '', body: '''Hi, 

        The pipeline at Jenkins has failed for front end. Pleas go over to the Jenkins and 
         check it out.

         Thanks!''', cc: '', from: '', replyTo: '', subject: 'The pipeline has failed!', to: 'rokaia.mohamed111099@gmail.com'
    }
    }
   
}
