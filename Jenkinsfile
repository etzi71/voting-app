pipeline {
  environment { 
      registry = "etzi71/result" 
      registryCredential = '9008c74f-4647-40cd-b983-a85a9f0ffffa' 
      dockerImage = '' 
    }
  agent { label 'master1' }
  stages {
    stage('Push result image') {
      steps {
          script {
              docker.withRegistry( '', registryCredential ) { 
                   dockerImage.push() 
              }           
        
        }
      }
    }
  }
}
