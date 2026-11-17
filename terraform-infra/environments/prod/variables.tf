variable "environment" {
  description = "Target deployment environment"
  type        = string
  default     = "prod"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "centralindia"
}

variable "vnet_name" {
  description = "Name of the VNet"
  type        = string
}

variable "address_space" {
  description = "VNet address CIDR space"
  type        = list(string)
}

variable "subnets" {
  description = "Subnet definitions"
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "storage_containers" {
  description = "List of containers / folders in storage account"
  type        = list(string)
  default     = ["app-configs", "app-logs", "app-data"]
}

variable "storage_files" {
  description = "Files to create or update inside the containers/folders"
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
