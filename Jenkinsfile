pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build --no-cache -t dragas/thttpd .'
      }
    }

    stage('Push to DockerHub') {
      steps {
        sh 'docker push dragas/thttpd'
      }
    }

    stage('Cleanup') {
      steps {
        sh 'yes | docker volume prune'
      }
    }

  }
}
