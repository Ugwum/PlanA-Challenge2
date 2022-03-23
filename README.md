#1. Get an AWS free trial account

If you already have an AWS account, you can skip this step.

AWS offers you a free trial account to try what most services they propose.

First, you have to create your AWS account. You will have to enter your credit card but don’t worry, every component you will deploy will not incur fees.


#2. Set up Terraform with AWS
In your AWS console, go to the IAM section and create a user named “FullAccess”. Then add your user to a group named “FullAccessGroup”. Attaches to this group the following rights:

AdministratorAccess
AmazonEKSClusterPolicy
After these steps, AWS will provide you a Secret Access Key and Access Key ID. Save them preciously because this will be the only time AWS gives it to you.

#3 From the AWS CLI run the aws configure command to set your access and secret keys
aws configure


#4 Download and  Set up Terraform CLI
For more details  use the link https://learn.hashicorp.com/tutorials/terraform/install-cli to complete this step 




#5 Open a command prompt at the root of the Challenge2\PlanA\SimpleMicroservice 

#6 # Initialize the terraform configuration
  Run the command  "terraform init"
  

#7  Plan the terraform deployment
Run the command "terraform plan -out planA_test_challenge2.tfplan"



Step 2: create provider.tf
Step 3: create all resources you need
Step 4: Add output.tf
Step 5: Deploy all your resources
Step 6: Destroy everything