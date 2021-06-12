pipeline {
  agent { label 'master1' }
  stages {
    stage('Push result image') {
      steps {
        withDockerRegistry(credentialsId: '9008c74f-4647-40cd-b983-a85a9f0ffffa', url: 'docker.io/etzi71/result') {
          sh 'docker push dockersamples/result'
        }
      }
    }
    stage('Push vote image') {
      steps {
        withDockerRegistry(credentialsId: '9008c74f-4647-40cd-b983-a85a9f0ffffa', url: 'docker.io/etzi71/vote') {
          sh 'docker push dockersamples/vote'
        }
      }
    }
    stage('Push worker image') {
      steps {
        withDockerRegistry(credentialsId: '9008c74f-4647-40cd-b983-a85a9f0ffffa', url: 'docker.io/etzi71/vote') {
          sh 'docker push dockersamples/worker'
        }
      }
    }
  }
}
