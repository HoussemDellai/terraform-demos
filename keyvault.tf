data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-keyvault"
  location = "West Europe"
}

resource "azurerm_key_vault" "keyvault" {
  name                        = "houssemkv2020"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_enabled         = false
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id # 
    object_id = data.azurerm_client_config.current.object_id # 

    key_permissions = [
      "get",
    ]

    secret_permissions = [
      "get",
      "list",
      "set"
    ]

    storage_permissions = [
      "get",
    ]
  }

  network_acls {
    default_action = "Allow"
    bypass         = "AzureServices"
  }

  tags = {
    environment = "Testing"
  }
}

# resource "azurerm_key_vault_access_policy" "keyvault_policy" {
#   key_vault_id = azurerm_key_vault.keyvault.id

#   tenant_id = data.azurerm_client_config.current.tenant_id
#   object_id = data.azurerm_client_config.current.object_id 

#   secret_permissions = [
#     "get",
#   ]

#   depends_on = [
#     azurerm_key_vault.keyvault
#   ]
# }
