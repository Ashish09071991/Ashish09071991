variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group where VNet will reside"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "address_space" {
  description = "CIDR block for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Map of subnets to create inside the Virtual Network"
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {}
}

variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}

