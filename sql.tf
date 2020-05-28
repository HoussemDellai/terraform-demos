resource "azurerm_sql_server" "sql" {
  name                         = var.sql_name
  resource_group_name          = azurerm_resource_group.resource_group_terraform.name
  location                     = azurerm_resource_group.resource_group_terraform.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  tags = {
    environment = "production"
  }
}
