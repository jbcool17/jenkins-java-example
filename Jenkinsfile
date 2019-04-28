pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'mvn clean package'
                sh 'ls -lah'
            }
        }
        stage('Build image') {
          app = docker.build("java-test/rest")
        }

    }
}
