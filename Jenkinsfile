node () {

  stage('Build') {
    docker.image('pdodds/docker-sphinx').inside('-v /etc/passwd:/etc/passwd -v /var/lib/jenkins/.ssh:/var/lib/jenkins/.ssh') {
      sshagent (credentials: [ '690e1d4f-a940-425d-b08e-61c65727f865' ]) {
          slackSend (message: "Building User Manual [${env.BUILD_NUMBER}] (${env.BUILD_URL})")
          checkout scm
          sh 'sphinx-versioning build . docs'
      }
    }
  }
  
  stage('Copy to EFS') {
    sh 'mkdir -p /efs/documentation/user-guide/'
    sh 'cp -r docs/* /efs/documentation/user-guide/'
    deleteDir()
  }
}
