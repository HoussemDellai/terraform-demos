resource "azurerm_storage_account" "storage_account" {
  name                     = var.storageaccount_name
  resource_group_name      = azurerm_resource_group.resource_group_terraform.name
  location                 = azurerm_resource_group.resource_group_terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
