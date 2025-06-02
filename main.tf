resource "azurerm_resource_group" "aroy_rg" {
  name     = var.rg_name
  location = var.region_location
}

resource "azurerm_storage_account" "roysa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.aroy_rg.name
  location                 = azurerm_resource_group.aroy_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "roycontainer" {
  name               = var.storage_container_name
  storage_account_id = azurerm_storage_account.roysa.id
  container_access_type = "blob"
}