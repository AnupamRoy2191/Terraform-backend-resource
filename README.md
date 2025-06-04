# Terraform Backend Resource Provisioning

This project provisions the backend infrastructure required for managing Terraform state files. It includes the creation of:

- An **Azure Resource Group**
- A **Storage Account** within that group
- A **Container** inside the storage account to hold the `.tfstate` files

This project serves as a **local bootstrap** setup and should be executed independently before other Terraform projects that depend on remote state management.

---

## 🔐 Secrets and Variables

Create a `secrets.tfvars` file in the root directory of the project to store sensitive variables. Below is the required structure:

```hcl
subscription_id = "xxxxxxxxxxxxxxxx"
client_id       = "xxxxxxxxxxxxxxxx"   # Registered App's Client ID
client_secret   = "xxxxxxxxxxxxxxxx"   # Registered App's Client Secret
tenant_id       = "xxxxxxxxxxxxxxxx"   # Azure Tenant ID

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


📌 Notes

This setup should be treated as a local bootstrap.

It is meant only for provisioning the backend (remote state) resources.

Do not store secrets in version control.