pipeline {
  agent { label 'master1' }
  stages {
  try {
    stage('Build result') {
      steps {
        sh 'docker build -t dockersamples/result ./result'
      }
   } catch (Exception e) {
      echo "Stage failed, but we continue"
   } 
    stage('Build vote') {
      steps {
        sh 'docker build -t dockersamples/vote ./vote'
        sh 'exit 0'
      }
    }
    stage('Build worker') {
      steps {
        sh 'docker build -t dockersamples/worker ./worker'
        sh 'exit 0'
      }
    }
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
