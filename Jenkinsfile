pipeline {
	agent any 
		environment {
			APP_NAME = "my-java-app"
			}
		stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
       }
	stage('Maven Build') {
            steps {
                sh 'mvn -B clean package'
            }
            post {
                success {
                    echo "Maven build completed successfully"
                }}}

		stage('Build Docker Image') {
            steps {
                script {
                    docker.build("demo10_docker_image")
}
}
}
}
post {
        always {
            echo "Build completed."
        }
    }
