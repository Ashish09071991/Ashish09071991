# Modular Terraform Architecture (Parent & Child Modules)

Yeh project industry-standard enterprise pattern par based hai jisme **Reusable Child Modules** aur **Environment-specific Parent (Root) Modules** structured hain, saath hi **Folder / Container Creation** aur **File Create/Update** ki capability added hai.

---

## 📁 Directory Structure

```text
terraform-infra/
├── modules/                               # 📦 REUSABLE CHILD MODULES
│   ├── resource_group/                    # Child Module 1: Resource Group
│   │   ├── main.tf, variables.tf, outputs.tf
│   ├── virtual_network/                   # Child Module 2: VNet & Subnets (for_each)
│   │   ├── main.tf, variables.tf, outputs.tf
│   └── storage_account/                   # Child Module 3: Storage Account + Folder/Container + File Create/Update
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── environments/                          # 🏢 PARENT (ROOT) MODULES
│   ├── dev/                               # Dev Environment Folder
│   │   ├── provider.tf
│   │   ├── main.tf                        # Calls Child Modules with Dev inputs
│   │   ├── variables.tf
│   │   ├── terraform.tfvars               # Dev values (containers, files, vnet)
│   │   └── outputs.tf
│   └── prod/                              # Prod Environment Folder
│       ├── provider.tf
│       ├── main.tf                        # Calls Child Modules with Prod inputs
│       ├── variables.tf
│       ├── terraform.tfvars               # Prod values (GRS replication, containers, files)
│       └── outputs.tf
│
├── deploy.ps1                             # ⚡ Windows PowerShell Interactive Folder Selector
├── deploy.sh                              # ⚡ Linux/Mac/Git-Bash Interactive Folder Selector
└── README.md
```

---

## 📦 File Create Aur Update Kaise Kaam Karta Hai?

Aap `terraform.tfvars` ke andar simply folder (containers) aur files define kar sakte hain:

```hcl
# 1. Folders / Containers define karein:
storage_containers = [
  "app-configs",
  "app-logs",
  "app-data"
]

# 2. Selected folder me Files Create ya Update karein:
storage_files = {
  "config.json" = {
    container_name = "app-configs"
    content        = "{\n  \"environment\": \"dev\",\n  \"version\": \"1.0.0\"\n}"
  }
  "welcome.txt" = {
    container_name = "app-data"
    content        = "Welcome to MyApp Dev Environment! Managed by Terraform."
  }
  # Agar local file upload karni ho:
  # "script.sh" = {
  #   container_name = "app-data"
  #   source_path    = "${path.module}/scripts/setup.sh"
  # }
}
```

> **Update Kaise Hoga?**
> Jab bhi aap `content` ya file update karke `terraform apply` chalayenge, Terraform automatic detect karega ki file change hui hai aur cloud me file ko in-place update kar dega!

---

## 🎯 Folder Select Karne Ke Options

### Option 1: Interactive PowerShell Script
```powershell
.\deploy.ps1
```
Screen par dynamically folders (`dev`, `prod`) aur actions (`init`, `plan`, `apply`) ka menu aayega.

### Option 2: Terraform `-chdir` Flag
```bash
terraform -chdir=environments/dev init
terraform -chdir=environments/dev plan
terraform -chdir=environments/dev apply
```
