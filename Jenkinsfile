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
                    def image = steps.docker.build("my-java-app")
                    echo "Docker image built successfully"
}
}
}
}
post {
        always {
            echo "Build completed."
        }
    }
}
