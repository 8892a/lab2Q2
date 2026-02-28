pipeline {
    agent any
    environment {
        JAVA_HOME = "C:\Program Files\Java\jdk-21"
        PATH = "${env.JAVA_HOME}\\bin;${env.PATH}"
    }
    tools {
        maven "M3"
    }
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/8892a/lab2Q2'
                bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
            post {
                success {
                    archiveArtifacts 'target/*.war'
                }
            }
        }
    }
}
