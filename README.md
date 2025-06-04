# Notes #
This is the normal terraform backend resource provisioning project, where in we will provision resource group, in that we'll going to create a storage account and container in which state file will be managed for other terraform projects.

So this project should be managed locally as a bootstrapping for backend resource i.e storage account & container purpose.

# commands #

go to project location 

Run below command to initialise the terraform project :

cd Terraform-backend-resource
terraform init

Run below command to check the config files sytax :

terraform fmt
terraform validate

Run below command to create a project plan :

terraform plan -out tfplan -var-file=secrets.tfvars

Run below command to provision the backend resources without auto approval :

terraform apply -var-file=secrets.tfvars
above command will ask for the prompt whether to proceed yes or no

Run below command to provision the backend resource with auto approval :

terraform apply tfplan -var-file=secrets.tfvars

OR

terraform apply tfplan -auto-approve -var-file=secrets.tfvars
