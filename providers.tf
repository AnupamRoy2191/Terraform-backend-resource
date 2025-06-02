provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id     ## Registered App's ID 
  client_secret   = var.client_secret ## client secret value
  tenant_id       = var.tenant_id     ## Registered App's tenant ID 
}