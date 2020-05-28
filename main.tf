resource "azurerm_resource_group" "resource_group_terraform" {
  name     = var.resourcegroup_name
  location = var.location

  tags = {
    environment = "Staging"
    department  = "IT"
    cost_center = "DevOps Team"
  }
}

resource "azurerm_resource_group" "resource_group_terraform_2" {
  name     = var.resourcegroup_2_name
  location = var.location
}
