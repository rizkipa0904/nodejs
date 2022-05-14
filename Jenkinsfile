
pipeline{

	agent any
	
	environment {
		
	    	registry = "rafdev0904/nodejs"
		dockerImage = ''
	}
	stages {
		
		stage('Build Docker Image') {
		    steps {
			script {
			    dockerImage = docker-compose.build registry + ":$BUILD_NUMBER"
				}
			    }
			}

		stage('Login') {

			steps {
				sh 'docker login -u rafdev0904 -p Tkjmhd123'
			}

		stage('Push') {

			steps {
				script {
				dockerImage.push()
				}
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
