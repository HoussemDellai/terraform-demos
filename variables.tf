variable resourcegroup_name {
  default     = "resource_group_houssem_dellai"
  type        = string
  description = "The name for my resource group"
}

variable location {
  default     = "West Europe"
  type        = string
  description = "The location for my Azure resources"
}

variable appservice_name {
  default     = "app-service-terraform-2021"
  type        = string
  description = "The name for my web app"
}

variable appserviceplan_name {
  default     = "houssem-appserviceplan"
  type        = string
  description = "The name for my web app plan"
}

variable storageaccount_name {
  default     = "houssemstorageaccount21"
  type        = string
  description = "The name for my storage account"
}

variable sql_name {
  default     = "houssem-sql"
  type        = string
  description = "The name for my Azure SQL"
}

variable administrator_login {
  default     = "houssem-sql"
  type        = string
  description = "The login for my Azure SQL"
}

variable administrator_login_password {
  default     = "@Aa123456789"
  type        = string
  description = "The password for my Azure SQL"
}

variable resourcegroup_2_name {
  default     = "resource_group_houssem_dellai_2"
  type        = string
  description = "The name for my second resource group"
}
