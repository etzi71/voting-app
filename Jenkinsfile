pipeline {
  agent { label 'master1' }
  stages {
    stage('Build result') {
      steps {
        sh 'docker build -t etzi71/result:${env.BUILD_NUMBER} ./result'
      }
    } 
    stage('Build vote') {
      steps {
        sh 'docker build -t etzi71/vote:${env.BUILD_NUMBER} ./vote'
      }
    }
    stage('Build worker') {
      steps {
        sh 'docker build -t etzi71/worker:${env.BUILD_NUMBER} ./worker'
      }
    }
    stage('Push result image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/result:${env.BUILD_NUMBER}'
        }
      }
    }
    stage('Push vote image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/vote:${env.BUILD_NUMBER}'
        }
      }
    }
    stage('Push worker image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url:'') {
          sh 'docker push etzi71/worker:${env.BUILD_NUMBER}'
        }
      }
    }
  }
}
