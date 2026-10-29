<div align="center">

<img src="./assets/banner.svg" alt="Ashish Pandey - Senior DevOps Engineer at Reliance Industries" width="100%" />

<br/><br/>

<a href="https://www.linkedin.com/in/ashish-pandey-05120a30">
  <img src="./assets/avatar.png" alt="Ashish Pandey" width="150" height="150" />
</a>

<br/>

<a href="https://readme-typing-svg.demolab.com/">
  <img src="https://readme-typing-svg.demolab.com/?font=Fira+Code&weight=600&size=19&pause=1200&color=00F2FE&center=true&vCenter=true&width=940&height=55&lines=Senior+DevOps+Engineer+%40+Reliance+Industries+Ltd.;10%2B+Years+IT+Experience+%7C+5%2B+Years+DevOps+%26+Cloud+IaC;Terraform+Modular+IaC+%7C+Azure+Enterprise+Infrastructure;Multi-Stage+CI%2FCD+(Azure+DevOps+%26+GitHub+Actions);Shift-Left+DevSecOps+(Trivy%2C+Checkov%2C+SonarQube%2C+TFSec);Flagship%3A+Reliance+Jio+Mission-Critical+POS+Platform" alt="Ashish Pandey Headline" />
</a>

### ⚡ Senior DevOps Engineer | Cloud, IaC & DevSecOps Specialist
**Reliance Industries Ltd. • 10+ Years Total IT • 5+ Years Cloud Automation & CI/CD**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Ashish_Pandey-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ashish-pandey-05120a30)
[![Email](https://img.shields.io/badge/Email-ap61084%40gmail.com-EA4335?style=for-the-badge&logo=gmail&logoColor=white)](mailto:ap61084@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-Ashish09071991-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Ashish09071991?tab=repositories)
[![Company](https://img.shields.io/badge/Current-Reliance_Industries_Ltd.-E11D48?style=for-the-badge)](#-professional-journey)
[![Status](https://img.shields.io/badge/Status-Open_to_Senior_Opportunities-10B981?style=for-the-badge)](#-get-in-touch)

</div>

---

## 💼 Executive Profile

I am a **Senior DevOps Engineer** with **10+ years of comprehensive IT experience**, including **5+ years specializing in cloud infrastructure automation, CI/CD pipelines, and DevSecOps practices**. 

Currently at **Reliance Industries Ltd.**, I drive infrastructure engineering and release automation for high-impact platforms, including the business-critical **Reliance Jio POS application** (handling SIM activation, billing, and inventory management). My hands-on core spans **Terraform modular IaC**, **Microsoft Azure enterprise cloud**, **Azure DevOps & GitHub Actions multi-stage YAML pipelines**, **Kubernetes (AKS)**, and **shift-left pipeline security**.

### 🚀 Business Impact & Proven Metrics:
* 📉 **60% Reduction in Manual Effort:** Delivered through standardized, reusable Terraform modules and automated PowerShell/Bash orchestration.
* ⚡ **40% Faster Deployment Cycles:** Designed streamlined multi-stage CI/CD pipelines across Dev, Staging, and Production tiers.
* 🛡️ **99.9% Production Uptime:** Sustained high-availability architectures and zero/low-downtime release deployments for enterprise platforms.
* 🔒 **Shift-Left Security Enforcement:** Embedded automated static analysis, container scanning, and secret detection directly into pipelines.

<br/>

<div align="center">

| 🏢 **Enterprise Foundation** | 🚀 **Cloud & DevOps Core** | 📦 **Modular IaC & GitOps** | 🛡️ **Shift-Left DevSecOps** |
| :--- | :--- | :--- | :--- |
| **10+ Years** enterprise IT experience across Linux (RHEL/CentOS/Ubuntu), network routing, systems engineering, and operational reliability. | **5+ Years** architecting and managing production workloads on **Microsoft Azure**, Azure DevOps, and GitHub Actions. | Production **Terraform** using parent-child modules, `for_each`, `map(object)`, and remote state lease locking. | Pipeline security scanning via **SonarQube, Trivy, Checkov, TFSec, TruffleHog, and Gitleaks**. |

</div>

---

## 🏗️ Enterprise Production DevOps & Security Lifecycle

```mermaid
flowchart TD
    subgraph SCM["1. Source Control & Governance"]
        A["Feature / Fix Branch"] --> B["Git Commit & PR Creation"]
        B --> C["Branch Protection & Peer Review"]
    end

    subgraph SECURITY["2. Shift-Left DevSecOps Pre-Flight"]
        C --> D["Gitleaks & TruffleHog Secret Detection"]
        D --> E["SonarQube Static Code Analysis"]
        E --> F["Checkov & TFSec IaC Security Audit"]
    end

    subgraph CI["3. Continuous Integration & IaC Plan"]
        F --> G["Terraform fmt -check & validate"]
        G --> H["Terraform Plan Generation"]
        H --> I{"Manual Approval Gate"}
    end

    subgraph CD["4. Continuous Deployment & State Management"]
        I -->|Approved| J["Terraform Apply Execution"]
        J <-->|State & Lease Locking| K["Azure Blob Storage Backend"]
    end

    subgraph INFRA["5. Microsoft Azure Cloud Infrastructure"]
        J --> L["Enterprise VNet, NSG, App Gateway & Firewall"]
        J --> M["Modular VM Compute & Azure Kubernetes Service AKS"]
        J --> N["Secure Tiered Storage Accounts & Key Vault Secrets"]
    end

    subgraph OBSERVE["6. Observability, Alerting & FinOps"]
        L & M & N --> O["Azure Monitor & Log Analytics Workspace"]
        O --> P["Grafana / Prometheus / Sentinel Dashboards"]
        O --> Q["Cost Optimization & Orphaned Resource Hygiene"]
    end

    classDef blueBox fill:#0A192F,stroke:#0078D4,stroke-width:2px,color:#E2E8F0;
    classDef redBox fill:#2A0E1A,stroke:#F43F5E,stroke-width:2px,color:#E2E8F0;
    classDef amberBox fill:#271804,stroke:#F59E0B,stroke-width:2px,color:#E2E8F0;
    classDef greenBox fill:#042316,stroke:#10B981,stroke-width:2px,color:#E2E8F0;
    classDef purpleBox fill:#1E112A,stroke:#8B5CF6,stroke-width:2px,color:#E2E8F0;
    classDef cyanBox fill:#06262D,stroke:#06B6D4,stroke-width:2px,color:#E2E8F0;

    class A,B,C blueBox;
    class D,E,F redBox;
    class G,H,I amberBox;
    class J,K greenBox;
    class L,M,N purpleBox;
    class O,P,Q cyanBox;
```

---

## 🛠️ Comprehensive Technical Arsenal

<div align="center">

<a href="https://skillicons.dev">
  <img src="https://skillicons.dev/icons?i=azure,aws,terraform,githubactions,git,github,docker,kubernetes,powershell,bash,linux,vscode&perline=6" alt="Tech Stack" />
</a>

</div>

<br/>

| Technical Domain | Enterprise Technologies & Tools |
| :--- | :--- |
| ☁️ **Cloud Platforms** | **Microsoft Azure** (Virtual Machines, VNet, NSG, Storage Accounts, Key Vault, Load Balancer, Application Gateway, Azure Firewall, Azure Monitor), **AWS (Basics)** |
| 📦 **Infrastructure as Code** | **Terraform** (Reusable Child/Parent Modules, `for_each`, `map(object)`, `dynamic` blocks, Remote State Backend Locking), **ARM Templates**, **Bicep** |
| 🚀 **CI/CD & DevOps** | **Azure DevOps (ADO)** (Multi-stage YAML Pipelines, Environments, Service Connections), **GitHub Actions**, **Azure Repos** |
| 🛡️ **DevSecOps & Scanning** | **SonarQube**, **Trivy**, **Checkov**, **TFSec**, **TruffleHog**, **Gitleaks**, **OWASP Dependency Check** |
| 🐳 **Containers & Orchestration** | **Docker**, **Kubernetes (AKS)**, **Helm Charts** |
| 📊 **Monitoring & Observability** | **Azure Monitor**, **Log Analytics Workspace**, **Grafana**, **Prometheus**, **ELK Stack**, **Microsoft Sentinel** |
| 🔐 **Identity & Governance** | **Azure AD / Microsoft Entra ID**, Role-Based Access Control (**RBAC**), **Azure Key Vault**, **Azure Policy**, Cloud FinOps & Cost Optimization |
| 📜 **Scripting & Automation** | **PowerShell**, **Bash**, **Azure CLI (`az cli`)**, Cron automation |
| 🖥️ **Operating Systems & Systems** | **Linux** (RHEL, CentOS, Ubuntu), **Windows Server**, LVM Storage, Apache, Nginx, DNS, SSH |

---

## 💼 Professional Experience & Enterprise Track Record

```
2013 ─── IT & Network Support (Wipro / IKYA / Emerson) ─── Enterprise Systems & L1/L2 Infrastructure
2016 ─── System Engineer (Staunch Business Solutions)  ─── Linux Server Administration & Scripting
2020 ─── DevOps Consultant (Staunch Business Solutions)─── Azure Cloud, Terraform IaC & CI/CD
2023 ─── Senior DevOps Engineer (Reliance Industries)  ─── Enterprise Cloud, DevSecOps, Jio POS
```

### 🏢 Reliance Industries Ltd., India
**Senior DevOps Engineer** | *Mar 2023 – Present*
* **Flagship Enterprise Platform:** Lead DevOps engineering for the mission-critical **Reliance Jio POS application** — powering nationwide SIM activation, customer billing, and live inventory management with zero/low-downtime releases and **99.9% application uptime**.
* **Terraform Modularization:** Architect and maintain standardized, reusable Terraform modules with remote state management in Azure Blob Storage, eliminating manual provisioning effort by **60%**.
* **Enterprise CI/CD Pipelines:** Design and operate multi-stage YAML pipelines across Azure DevOps and GitHub Actions, speeding up release cycles by **40%**.
* **Embedded DevSecOps:** Integrated automated pre-deployment scanning (Terraform validation, SonarQube quality gates, Trivy container analysis, and Gitleaks secret detection).
* **Observability & FinOps:** Implemented continuous health telemetry with Azure Monitor and Log Analytics, optimizing cloud resource usage to cut unnecessary cloud expenditure.

---

### 🏢 Staunch Business Solutions, India
**DevOps Consultant** | *Jan 2020 – Feb 2023*
* Delivered end-to-end infrastructure automation on Azure using Terraform for VMs, VNets, Storage Accounts, and Load Balancers.
* Configured enterprise network isolation via VNet peering, NSG security rules, and Load Balancer routing.
* Built automated build and release pipelines with Azure DevOps and GitHub Actions.
* Designed backup and Disaster Recovery (DR) strategies leveraging Azure Backup and Recovery Services Vault.

**System Engineer** | *Nov 2016 – Dec 2019*
* Managed high-availability Linux production servers (RHEL, CentOS, Ubuntu) running Apache, Nginx, SSH, and DNS.
* Automated administrative workflows, backups, and log rotations using Bash shell scripting and cron jobs.
* Managed LVM storage volumes and resolved critical system incidents to minimize server downtime.

---

## 🏆 Awards & Honors

* 🌟 **Quarterly Star Performer (2025)** — *Reliance Industries Ltd.*
  *Awarded for exceptional CI/CD multi-stage pipeline optimization and release stabilization.*
* 🥇 **Annual Excellence Award (2024)** — *Reliance Industries Ltd.*
  *Recognized for enterprise Terraform modularization, cutting infrastructure manual provisioning effort by 60%.*
* 🎯 **Team Excellence Award (2024)** — *Reliance Industries Ltd.*
  *Honored for sustaining 99.9% application uptime across business-critical production environments.*

---

## 📂 Featured GitHub Implementations

Direct links to open-source infrastructure and automation implementations from my workspace:

### 1. 🏗️ [`azure-enterprise-landing-zones`](https://github.com/Ashish09071991/azure-enterprise-landing-zones)
**Enterprise Azure Landing Zone Infrastructure as Code**
* Modular, scalable Terraform codebase delivering enterprise Hub-and-Spoke network topology.
* Provisions segregated subnets, route tables, NSGs, and remote state backend locking with Azure Blob Storage.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/azure-enterprise-landing-zones)

---

### 2. ☸️ [`azure-kubernetes-aks-terraform-iac`](https://github.com/Ashish09071991/azure-kubernetes-aks-terraform-iac)
**Production Azure Kubernetes Service (AKS) Architecture**
* Enterprise AKS cluster deployment with dedicated System & User autoscaling node pools.
* Configured with Azure CNI networking, Managed Identity, and Azure Log Analytics container observability.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/azure-kubernetes-aks-terraform-iac)

---

### 3. 🛡️ [`devsecops-pipeline-security-framework`](https://github.com/Ashish09071991/devsecops-pipeline-security-framework)
**Enterprise DevSecOps CI/CD Pipeline Security Framework**
* Shift-Left security automation integrating Checkov, TFSec, Trivy, and Gitleaks pre-flight gates.
* Ready-to-use pipeline definitions for both GitHub Actions and Azure DevOps YAML multi-stage workflows.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/devsecops-pipeline-security-framework)

---

### 4. 📦 [`terraform-azure-storage-account-dynamic`](https://github.com/Ashish09071991/terraform-azure-storage-account-dynamic)
**Declarative Multi-Resource Automation using `for_each` & `map(object)`**
* Advanced Terraform construct implementation driving multi-region Resource Group and Storage Account provisioning from a single structured map.
* Enforces standardized naming conventions, tiering policies, and security configurations.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/terraform-azure-storage-account-dynamic)

---

### 5. 🖥️ [`terraform-azure-vm-modules`](https://github.com/Ashish09071991/terraform-azure-vm-modules)
**Parent-Child Modular Compute Engine Architecture**
* Enterprise Terraform pattern establishing clean decoupling between orchestrator root modules and reusable child compute modules.
* Dynamic NIC configuration, disk attachment profiles, and secure access management.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/terraform-azure-vm-modules)

---

### 6. ⚡ [`azure-devops-yaml-ci-cd-pipelines`](https://github.com/Ashish09071991/azure-devops-yaml-ci-cd-pipelines)
**Enterprise Multi-Stage CI/CD Deployment Integration**
* Multi-stage build, test, and release workflow with automated validation checks and deployment stages.
* Integrated approval gates and environment-specific variable substitutions.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/azure-devops-yaml-ci-cd-pipelines)

---

### 7. 🤖 [`github-actions-devsecops-workflows`](https://github.com/Ashish09071991/github-actions-devsecops-workflows)
**Automated DevSecOps & IaC Verification Workflow**
* GitHub Actions workflow triggering automated `terraform fmt`, `terraform validate`, and linting scans on pull requests.
* Secure credential injection via GitHub Secrets and Azure Service Principal authentication.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/github-actions-devsecops-workflows)

---

### 8. 💰 [`azure-finops-cost-governance`](https://github.com/Ashish09071991/azure-finops-cost-governance)
**FinOps Automation & Cloud Governance Engine**
* Automated scripts and runbooks to identify unattached managed disks, idle public IPs, and unused resources.
* Enforces enterprise resource tagging hygiene and cost governance across Azure subscriptions.
* [**Explore Repository ➜**](https://github.com/Ashish09071991/azure-finops-cost-governance)

---

## 📊 GitHub Analytics

<div align="center">

<img src="https://github-readme-stats.vercel.app/api?username=Ashish09071991&show_icons=true&theme=tokyonight&hide_border=true&include_all_commits=true&count_private=true" alt="Ashish's GitHub Stats" width="48%" />
<img src="https://streak-stats.demolab.com/?user=Ashish09071991&theme=tokyonight&hide_border=true" alt="GitHub Streak" width="48%" />

</div>

---

## 🤝 Let's Connect

I am always keen to connect with fellow DevOps engineers, cloud architects, and engineering leaders.

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-ashish--pandey-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ashish-pandey-05120a30)
[![Email](https://img.shields.io/badge/Email-ap61084%40gmail.com-EA4335?style=for-the-badge&logo=gmail&logoColor=white)](mailto:ap61084@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-Ashish09071991-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Ashish09071991)

<br/>

<img src="./assets/footer.svg" alt="Ashish Pandey Footer" width="100%" />

</div>
