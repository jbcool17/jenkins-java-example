pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
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
