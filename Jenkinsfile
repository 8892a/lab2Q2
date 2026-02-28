pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from your GitHub repository
                git 'https://github.com/8892a/lab2Q2'

                // Run Maven on Windows agent
                bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            post {
                success {
                    // Archive the WAR artifact
                    archiveArtifacts 'target/*.war'
                    // Removed junit step since no tests exist
                }
            }
        }
    }
}
