# Plan-A-Challenge2

This is a simple guide to deploy aws vpc and eks resource using terraform 

# Prerequisites
1. Login to your aws account or create on if you don"t have one

2. Set up Terraform with AWS
Retrieve the Secret Access Key and Access Key ID and Save them preciously because this will be the only time AWS gives it to you.

3. From the AWS CLI run the aws configure command to set your access and secret keys
aws configure

4. Download and  Set up Terraform CLI
For more details  use the link https://learn.hashicorp.com/tutorials/terraform/install-cli to complete this step 


# To create and deploy the  vpc,eks resources on AWS using terraform 

1. Clone the repository git clone https://github.com/Ugwum/Plan-A-Challenge2.git

2. Open a command prompt at the root folder aws_vpc_eks_setup  i.e cd  Plan-A-Challenge2\aws_vpc_eks_setup

3. Run the command  "terraform init" to initialize terraform and its configuration
  
4. Run the command "terraform plan -out planA_test_challenge2.tfplan" to plan the terraform deployment.

5. Run the command  terraform apply "planA_test_challenge2.tfplan" to Apply the deployment to the AWS Account


