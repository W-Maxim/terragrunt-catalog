module "naming" {
  source = "git::https://github.com/azurerm/terraform-azure-naming.git?ref=d7d7431ed15d8d589ee6d7ea2cb612211603158a" # Version 0.1.3
  suffix = [
    var.name,
    var.stage,
    var.environment,
  ]
}

module "storage_account" {
  source                   = "git::https://github.com/Azure-Terraform/terraform-azurerm-storage-account.git?ref=3b3888d56ddc6b728ca0dabdeb1ba554c2907a8f" # Version 1.2.0
  name                     = replace(module.naming.storage_account.name_unique, "/[^a-z0-9]+/", "")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Environment = var.environment
    Stage       = var.stage
  }
}