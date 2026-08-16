pipeline
{
    agent any 

    environment
    {
        AWS_Access_Key_ID = credentials('AWS_AccessKey_ID')
        AWS_Secret_Access_Key = credentials('AWS_Secret_Access_Key')
    }
    stages
    {
        stage("Git Checkout")
        {
            steps()
            {
                git branch: 'main' url: 'https://github.com/rajaram512/TerraformCICDJenkins.git'
            }
        }


        stage("Terraform Initialization")
        {
            steps()
            {
                sh 'terraform init -no-color'
            }
        }
        stage("Terraform Format")
        {
            steps()
            {
                sh 'terraform fmt -no-color'
            }
        }
        stage("Terraform Validate")
        {
            steps()
            {
                sh 'terraform validate -no-color'
            }
        }
        stage("Terraform Plan")
        {
            steps()
            {
                sh 'terraform plan -no-color'
            }
        }
        stage("Terraform Apply")
        {
            steps()
            {
                sh 'terraform apply -no-color'
            }
        }
    }//stages 
}//pipeline