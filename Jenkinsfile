pipeline{
   agent any
     stages{
      stage("terraform init"){
      sh '''cd modules
          terraform init
         '''

           }
   stage("terraform plan"){
      sh '''
      cd modules
      terraform plan
      '''
      }

       stage("terraform apply"){
            sh '''
            cd modules
            terraform apply -auto-approve
            '''
            }

             stage("terraform apply"){
                        sh '''
                        echo "hello"
                        '''
                        }
   }
}