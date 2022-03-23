# Plan-A-Challenge2

This is a simple guide to deploy aws vpc and eks resource using terraform 

#1. Login to your aws account or create on if you don"t have one


#2. Set up Terraform with AWS
Retrieve the Secret Access Key and Access Key ID and Save them preciously because this will be the only time AWS gives it to you.

#3 From the AWS CLI run the aws configure command to set your access and secret keys
aws configure


#4 Download and  Set up Terraform CLI
For more details  use the link https://learn.hashicorp.com/tutorials/terraform/install-cli to complete this step 



#5 Open a command prompt at the root folder aws_vpc_eks_setup  on

#6 # Initialize the terraform configuration
  Run the command  "terraform init"
  

#7  Plan the terraform deployment
Run the command "terraform plan -out planA_test_challenge2.tfplan"


