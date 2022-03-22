
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub_id')
	}

	stages {

		stage('Build') {
			steps {
				sh'docker build -t rafdev0904/nodejs:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'docker login -u rafdev0904 -p Tkjmhd123'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push rafdev0904/nodejs'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
