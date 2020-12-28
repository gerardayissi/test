pipeline {
   agent any

   stages {
      stage('Build') {
         steps {
            sh 'rm -rf build' 
            sh 'mkdir build'
            sh 'touch build/car.txt'
            sh 'echo "chassis" >> build/car.txt'
            sh 'echo "engine" >> build/car.txt'
            sh 'echo "body" >> build/car.txt'
         }
      }
      stage('Test') {
          steps {
              sh 'test -f build/car.txt'
              sh 'grep "chassis" build/car.txt'
              sh 'grep "engine" build/car.txt'
              sh 'grep "body" build/car.txt'
          }
      }
      stage('Build Echo') {
           steps {
              sh 'echo "chassis" ' // add chassis
           }
        }
      stage('Terraform Init Step') {
            steps  {
               withEnv(['TERRAFORM_PATH=/usr/local/bin']){
               sh '''
               /Users/hgo2/Downloads/google-cloud-sdk/bin/gcloud auth activate-service-account 432542458034-compute@developer.gserviceaccount.com --key-file /Users/hgo2/google/keys/manhattan-active-omni.json
               /Users/hgo2/Downloads/google-cloud-sdk/bin/gcloud config set project manhattan-active-omni
               cd /Users/hgo2/IdeaProjects/cicd/terraform/manhattan/create-storage
               $TERRAFORM_PATH/terraform init
               '''
               }
            }
         }
   }
}
