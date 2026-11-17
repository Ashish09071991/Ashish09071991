resource "azurerm_storage_account" "this" {
  name                       = var.storage_account_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  account_tier               = var.account_tier
  account_replication_type   = var.replication_type
  min_tls_version            = "TLS1_2"
  https_traffic_only_enabled = true

  tags = var.tags
}

# Folder / Container creation in Storage Account
resource "azurerm_storage_container" "this" {
  for_each              = toset(var.containers)
  name                  = each.key
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = var.container_access_type
}

# File (Blob) Create & Update in the selected folder/container
resource "azurerm_storage_blob" "this" {
  for_each               = var.files
  name                   = each.key
  storage_account_name   = azurerm_storage_account.this.name
  storage_container_name = each.value.container_name
  type                   = lookup(each.value, "type", "Block")
  source_content         = lookup(each.value, "content", null)
  source                 = lookup(each.value, "source_path", null)

  depends_on = [azurerm_storage_container.this]
}
