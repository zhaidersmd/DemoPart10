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
                    def image =sh 'docker image build -t demo10image .'
                    echo "Docker image built successfully"
}
}
}
		stage('creating container'){

			steps {
				sh 'docker run -d -p 9919:9919 --name demo10container demo10image'
				echo "container built"}
			}
}

}
