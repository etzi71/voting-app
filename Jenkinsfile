pipeline {
  agent { label 'master1' }
  stages {
    stage('Build result') {
      steps {
        sh 'docker build -t vapp/result ./result'
      }
    } 
    stage('Build vote') {
      steps {
        sh 'docker build -t vapp/vote ./vote'
      }
    }
    stage('Build worker') {
      steps {
        sh 'docker build -t vapp/worker ./worker'
      }
    }
    stage('Push result image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push vapp/result'
        }
      }
    }
    stage('Push vote image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push vapp/vote'
        }
      }
    }
    stage('Push worker image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push vapp/worker'
        }
      }
    }
  }
}
