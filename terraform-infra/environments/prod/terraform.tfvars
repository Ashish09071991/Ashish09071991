environment         = "prod"
resource_group_name = "rg-myapp-prod-ci"
location            = "centralindia"
vnet_name           = "vnet-myapp-prod-ci"
address_space       = ["10.20.0.0/16"]

subnets = {
  "snet-web" = {
    address_prefixes = ["10.20.1.0/24"]
  }
  "snet-app" = {
    address_prefixes = ["10.20.2.0/24"]
  }
  "snet-db" = {
    address_prefixes = ["10.20.3.0/24"]
  }
}

storage_account_name = "stmyappprodci001"

storage_containers = [
  "app-configs",
  "app-logs",
  "app-data"
]

storage_files = {
  "config.json" = {
    container_name = "app-configs"
    content        = "{\n  \"environment\": \"prod\",\n  \"version\": \"1.0.0\",\n  \"status\": \"production-ready\"\n}"
  }
}

tags = {
  Environment = "prod"
  Project     = "MyApp"
  ManagedBy   = "Terraform"
  Owner       = "Ashish Pandey"
  Criticality = "Mission-Critical"
}
