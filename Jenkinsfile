pipeline {
    agent any
    stages {
        stage('build') {
            container('maven') {
                sh 'mvn --version'
                sh 'mvn clean package'
                sh 'ls -lah'
            }
        }
        stage('Build image') {
          steps {
            sh 'docker build -t java-test/rest .'
            sh 'docker tag java-test/rest 192.168.1.5:5000/java-test/rest'
            sh 'docker push 192.168.1.5:5000/java-test/rest'
          }
        }

    }
}
