<#
.SYNOPSIS
    Interactive Terraform Environment & Folder Selector Script.
    Allows user to select which environment folder to run Terraform commands against.

.EXAMPLE
    .\deploy.ps1
    .\deploy.ps1 -Environment dev -Action plan
#>

param(
    [string]$Environment = "",
    [string]$Action = ""
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$EnvsDir = Join-Path $ScriptDir "environments"

# Get all environment folders dynamically
if (-not (Test-Path $EnvsDir)) {
    Write-Error "Environments directory not found at $EnvsDir"
    exit 1
}

$AvailableEnvs = Get-ChildItem -Path $EnvsDir -Directory | Select-Object -ExpandProperty Name

if ($AvailableEnvs.Count -eq 0) {
    Write-Error "No environment folders found under $EnvsDir"
    exit 1
}

# 1. Select Environment Folder if not passed via param
if ([string]::IsNullOrWhiteSpace($Environment) -or ($AvailableEnvs -notcontains $Environment)) {
    Clear-Host
    Write-Host "==========================================================" -ForegroundColor Cyan
    Write-Host "         TERRAFORM ENVIRONMENT / FOLDER SELECTOR          " -ForegroundColor Yellow
    Write-Host "==========================================================" -ForegroundColor Cyan
    Write-Host "Please select the environment folder you want to deploy:`n" -ForegroundColor White

    for ($i = 0; $i -lt $AvailableEnvs.Count; $i++) {
        Write-Host "  [$($i + 1)] $($AvailableEnvs[$i])" -ForegroundColor Green
    }
    Write-Host "  [Q] Quit`n" -ForegroundColor Red

    $choice = Read-Host "Enter selection (1-$($AvailableEnvs.Count) or Q)"
    if ($choice -eq 'Q' -or $choice -eq 'q') {
        Write-Host "Exiting..." -ForegroundColor Yellow
        exit 0
    }

    $idx = [int]$choice - 1
    if ($idx -lt 0 -or $idx -ge $AvailableEnvs.Count) {
        Write-Error "Invalid selection. Exiting."
        exit 1
    }

    $Environment = $AvailableEnvs[$idx]
}

# 2. Select Action if not passed via param
$ValidActions = @("init", "validate", "plan", "apply", "destroy")
if ([string]::IsNullOrWhiteSpace($Action) -or ($ValidActions -notcontains $Action)) {
    Write-Host "`nSelected Folder: environments/$Environment" -ForegroundColor Green
    Write-Host "----------------------------------------------------------" -ForegroundColor Gray
    Write-Host "Select Terraform action to execute:`n" -ForegroundColor White
    Write-Host "  [1] init      (Initialize backend and child modules)" -ForegroundColor Cyan
    Write-Host "  [2] validate  (Validate syntax and configuration)" -ForegroundColor Cyan
    Write-Host "  [3] plan      (Preview execution plan)" -ForegroundColor Cyan
    Write-Host "  [4] apply     (Apply changes to cloud)" -ForegroundColor Cyan
    Write-Host "  [5] destroy   (Destroy managed infrastructure)" -ForegroundColor Red
    Write-Host "  [Q] Quit`n" -ForegroundColor Yellow

    $actionChoice = Read-Host "Enter action (1-5 or Q)"
    switch ($actionChoice) {
        "1" { $Action = "init" }
        "2" { $Action = "validate" }
        "3" { $Action = "plan" }
        "4" { $Action = "apply" }
        "5" { $Action = "destroy" }
        default {
            Write-Host "Cancelled or invalid choice. Exiting." -ForegroundColor Yellow
            exit 0
        }
    }
}

# 3. Execute Terraform with -chdir pointing to the selected folder
$TargetFolder = Join-Path $EnvsDir $Environment
Write-Host "`n>>> Executing: terraform -chdir=`"environments/$Environment`" $Action" -ForegroundColor Magenta
Write-Host "==========================================================`n" -ForegroundColor Gray

if ($Action -eq "apply") {
    terraform -chdir="$TargetFolder" apply -auto-approve
} elseif ($Action -eq "destroy") {
    terraform -chdir="$TargetFolder" destroy
} else {
    terraform -chdir="$TargetFolder" $Action
}

