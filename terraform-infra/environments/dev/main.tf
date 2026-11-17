# 1. Call Resource Group Child Module
module "resource_group" {
  source   = "../../modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# 2. Call Virtual Network Child Module
module "virtual_network" {
  source              = "../../modules/virtual_network"
  vnet_name           = var.vnet_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  address_space       = var.address_space
  subnets             = var.subnets
  tags                = var.tags

  depends_on = [module.resource_group]
}

# 3. Call Storage Account Child Module (with Folder/Container & File Create/Update options)
module "storage_account" {
  source               = "../../modules/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  account_tier         = "Standard"
  replication_type     = "LRS"
  containers           = var.storage_containers
  files                = var.storage_files
  tags                 = var.tags

  depends_on = [module.resource_group]
}
