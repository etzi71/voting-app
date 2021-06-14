pipeline {
  agent { label 'master1' }
  stages {
    stage('Build result') {
      steps {
        sh 'docker build -t etzi71/result ./result'
      }
    } 
    stage('Build vote') {
      steps {
        sh 'docker build -t etzi71/vote ./vote'
      }
    }
    stage('Build worker') {
      steps {
        sh 'docker build -t etzi71/worker ./worker'
      }
    }
    stage('Push result image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/result'
        }
      }
    }
    stage('Push vote image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/vote'
        }
      }
    }
    stage('Push worker image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/worker'
        }
      }
    }
  }
}
