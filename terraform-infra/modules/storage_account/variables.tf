variable "storage_account_name" {
  description = "Unique name of the storage account (lowercase alphanumeric, 3-24 chars)"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "account_tier" {
  description = "Tier of storage account (Standard / Premium)"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Type of replication (LRS, GRS, RAGRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "containers" {
  description = "List of folder / container names to create"
  type        = list(string)
  default     = []
}

variable "container_access_type" {
  description = "The access level of the container (private, blob, container)"
  type        = string
  default     = "private"
}

variable "files" {
  description = "Map of files to create or update inside the containers/folders"
  type = map(object({
    container_name = string
    type           = optional(string, "Block")
    content        = optional(string)
    source_path    = optional(string)
  }))
  default = {}
}

variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}
