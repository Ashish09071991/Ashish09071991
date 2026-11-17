terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Production backend example (Azure Blob Storage)
  # backend "azurerm" {
  #   resource_group_name  = "rg-tfstate-mgmt"
  #   storage_account_name = "sttfstatemgmt001"
  #   container_name       = "tfstate"
  #   key                  = "dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}

