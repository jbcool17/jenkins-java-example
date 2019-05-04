podTemplate(label: 'build-pod', containers: [
  containerTemplate(name: 'git', image: 'alpine/git', ttyEnabled: true, command: 'cat'),
  containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', command: 'cat', ttyEnabled: true),
  containerTemplate(name: 'docker', image: 'docker', command: 'cat', ttyEnabled: true)
],
volumes: [
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
]
) {
  node('mypod') {
      stage('Maven Build') {
          container('maven') {
            sh 'mvn --version'
            sh 'mvn clean package'
            sh 'ls -lah'
          }
      }
      stage('Check running containers') {
          container('docker') {
            sh 'docker build -t java-test/rest .'
            sh 'docker tag java-test/rest 192.168.1.5:5000/java-test/rest'
            sh 'docker push 192.168.1.5:5000/java-test/rest'
          }
      }
  }
}
