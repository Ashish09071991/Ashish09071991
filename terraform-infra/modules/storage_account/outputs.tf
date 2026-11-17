output "id" {
  description = "The ID of the Storage Account"
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "The Name of the Storage Account"
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "The endpoint URL for blob storage"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "containers" {
  description = "Created folder / container details"
  value       = { for k, v in azurerm_storage_container.this : k => v.id }
}

output "files" {
  description = "Created or updated files (blobs) URLs"
  value       = { for k, v in azurerm_storage_blob.this : k => v.url }
}
