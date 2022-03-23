#1. Login to your aws account or create on if you don"t have one


#2. Set up Terraform with AWS
In your AWS console, go to the IAM section 

AWS will provide you a Secret Access Key and Access Key ID. Save them preciously because it is a onetime setup.

#3 From the AWS CLI run the aws configure command to set your access and secret keys retrieve from AWS Console
aws configure


#4 Download and  Set up Terraform CLI
For more details  use the link https://learn.hashicorp.com/tutorials/terraform/install-cli to complete this step 




#5 Open a command prompt at the root folder aws_vpc_eks_setup  of the repository cloned locally

#6 # Initialize the terraform configuration
  Run the command  "terraform init"
  

#7  Plan the terraform deployment
Run the command "terraform plan -out planA_test_challenge2.tfplan"

