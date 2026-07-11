# ============================================================
# FAEP Academy - Systems Engineering Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\systems_engineering"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Core Systems Engineering
    # --------------------------------------------------------

    "systems_foundations"

    "systems_thinking"

    "systems_analysis"

    "requirements_engineering"

    "concept_of_operations"

    "architecture"

    "systems_architecture"

    "systems_modeling"

    "model_based_systems_engineering"

    "digital_engineering"

    "integration"

    "verification_validation"

    "lifecycle_management"

    # --------------------------------------------------------
    # Engineering Management
    # --------------------------------------------------------

    "risk_management"

    "configuration_management"

    "decision_analysis"

    "systems_assurance"

    # --------------------------------------------------------
    # Advanced Systems Engineering
    # --------------------------------------------------------

    "mission_engineering"

    "enterprise_systems"

    "ecosystem_engineering"

    "qai_systems_engineering"

    # --------------------------------------------------------
    # Standards
    # --------------------------------------------------------

    "engineering_standards"

    # --------------------------------------------------------
    # Future
    # --------------------------------------------------------

    "future_systems_engineering"

)

# ------------------------------------------------------------
# Create Root Folder
# ------------------------------------------------------------

if (!(Test-Path $Root))
{
    New-Item -ItemType Directory -Path $Root | Out-Null
}

# ------------------------------------------------------------
# Create folders + README.md
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
            $Title = "Systems Engineering"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Systems Engineering curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Systems Engineering structure created successfully"
Write-Host "==============================================="
Write-Host ""