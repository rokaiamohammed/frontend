pipeline {
   agent any
   tools {nodejs "nodejs"}
    // agent {
    //     docker {
    //         image 'node:6-alpine'
    //         args '-p 80:3000'
    //     }
    // }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        // stage('Test') {
        //     steps {
        //         sh './test.sh'
        //     }
        // }
        // stage('Deliver') {
        //     steps {
        //         sh 'npm run build'
        //         //input message: 'Finished using the web site? (Click "Proceed" to continue)'
                
        //     }
        // }
        stage('start') {
            steps {
                sh 'npm start  & sleep 1'
            }
        }
    }
    // post {
    // success {

    //   emailext (
    //       to: 'rokaia.mohamed111099@gmail.com',
    //       subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
    //       body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
    //         <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
    //       recipientProviders: [[$class: 'DevelopersRecipientProvider']]
    //     )
    // }

    // failure {
    //     mail bcc: '', body: "<b>Example</b><br>Project:", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name" , to: "rokaia.mohamed111099@gmail.com";  
    //     mail bcc: '', body: '''Hi, 

    //     The pipeline at Jenkins has failed. Pleas go over to the Jenkins and 
    //      check it out.

    //      Thanks!''', cc: '', from: '', replyTo: '', subject: 'The pipeline has failed!', to: 'rokaia.mohamed111099@gmail.com'
    // }
    // }
}
