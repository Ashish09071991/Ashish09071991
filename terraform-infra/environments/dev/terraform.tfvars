environment         = "dev"
resource_group_name = "rg-myapp-dev-ci"
location            = "centralindia"
vnet_name           = "vnet-myapp-dev-ci"
address_space       = ["10.10.0.0/16"]

subnets = {
  "snet-web" = {
    address_prefixes = ["10.10.1.0/24"]
  }
  "snet-app" = {
    address_prefixes = ["10.10.2.0/24"]
  }
  "snet-db" = {
    address_prefixes = ["10.10.3.0/24"]
  }
}

storage_account_name = "stmyappdevci001"

# Folders / Containers to create
storage_containers = [
  "app-configs",
  "app-logs",
  "app-data"
]

# Files to create or update inside the selected folder/container
storage_files = {
  "config.json" = {
    container_name = "app-configs"
    content        = "{\n  \"environment\": \"dev\",\n  \"version\": \"1.0.0\",\n  \"status\": \"active\"\n}"
  }
  "welcome.txt" = {
    container_name = "app-data"
    content        = "Welcome to MyApp Dev Environment! Managed by Terraform."
  }
}

tags = {
  Environment = "dev"
  Project     = "MyApp"
  ManagedBy   = "Terraform"
  Owner       = "Ashish Pandey"
}
