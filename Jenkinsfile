pipeline{
   agent any
     stages{
      stage("terraform init"){
      steps{
      sh '''cd modules
                terraform init
               '''}


           }
   stage("terraform plan"){
   steps{
      sh '''
      cd modules
      terraform plan
      '''
      }
      }

       stage("terraform apply"){
       steps{
            sh '''
            cd modules
            terraform apply -auto-approve
            '''}
            }

             stage("terraform apply"){
             steps{
                        sh '''
                        echo "hello"
                        '''
                        }
                        }
   }
}