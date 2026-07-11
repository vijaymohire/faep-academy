# ============================================================
# FAEP Academy - Enterprise Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\enterprise"

$Folders = @(

    ""

    "adoption"

    "architecture_reviews"

    "best_practices"

    "governance"

    "modernization"

    "transformation"

    "enterprise_architecture"

    "enterprise_engineering"

    "enterprise_operations"

    "enterprise_security"

    "enterprise_data"

    "enterprise_ai"

    "enterprise_qai"

    "enterprise_cloud"

    "enterprise_digital_twins"

    "enterprise_integration"

    "enterprise_validation"

    "enterprise_readiness"

    "enterprise_maturity"

    "change_management"

    "stakeholder_management"

    "technology_adoption"

    "capability_maturity"

    "digital_transformation"

    "engineering_standards"

    "future_enterprise"
)

# ------------------------------------------------------------
# Create Root Folder
# ------------------------------------------------------------

if (!(Test-Path $Root))
{
    New-Item -ItemType Directory -Path $Root | Out-Null
}

# ------------------------------------------------------------
# Create Folders + README.md
# ------------------------------------------------------------

foreach ($Folder in $Folders)
{
    $Path = Join-Path $Root $Folder

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }

    $Readme = Join-Path $Path "README.md"

    if (!(Test-Path $Readme))
    {
        if ($Folder -eq "")
        {
            $Title = "Enterprise"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Enterprise curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Enterprise structure updated successfully"
Write-Host "==============================================="
Write-Host ""