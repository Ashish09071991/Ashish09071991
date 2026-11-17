output "resource_group_name" {
  value = module.resource_group.name
}

output "vnet_name" {
  value = module.virtual_network.vnet_name
}

output "subnet_ids" {
  value = module.virtual_network.subnet_ids
}

output "storage_account_endpoint" {
  value = module.storage_account.primary_blob_endpoint
}

output "storage_containers" {
  description = "Created folders/containers in storage account"
  value       = module.storage_account.containers
}

output "storage_files" {
  description = "Created or updated files (blobs) URLs"
  value       = module.storage_account.files
}
