pipeline {
  agent any

  environment {
    DIR = "/var/lib/jenkins/workspace/Newco-CTF-PAC-UKSouth/BICEP-azure-security-policies-subscription"
  }

  stages {

   stage('Az Authentication') {
      steps {
        sh 'az login --service-principal -u d477bc25-9605-4f7b-9d57-183a8023aedd -p Gen7Q~McGigoaFDq1RR_Xm3AwipWq3btGsZ7P -t 2eaefbef-4530-46a0-9c3a-1bae7a45d64d'

      }
    }
    
    stage('Deploy ARM') {
      steps {
        dir("${DIR}"){
          script{
            sh "pwd"
            sh "./run.sh"
          }
        }
      }
    }
  }
}



// import groovy.json.JsonSlurper
// node {
//     stage('Checkout') {
//         checkout scm
//     }
//     astage('Authenticate') {
//         withCredentials([azureServicePrincipal('Jenkins_SP')]) { //'Azure-private-sp' will need to be changed for client environment's credentials
//             sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
// }
        
//     }
//     stage('Build') {
//         withCredentials([azureServicePrincipal('Jenkins_SP')]) { //'Azure-private-sp' will need to be changed for client environment credentials
//             sh 'az bicep build --file ./main/main.bicep'
// }
        
//     }
    
//     stage('Deploy') {
//         withCredentials([azureServicePrincipal('Jenkins_SP')]) { //'Azure-private-sp' will need to be changed for client environment credentials
//             sh 'az deployment sub create --l WestUS -f ./main/main.bicep'
// }
        
//     }
// }
