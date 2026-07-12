# ============================================================
# FAEP Academy - QAI Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\qai"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Core Foundations
    # --------------------------------------------------------

    "qai_foundations"

    "qai_information"

    "qai_computing"

    "qai_communication"

    "qai_memory"

    "qai_runtime"

    "qai_platform"

    # --------------------------------------------------------
    # Platform
    # --------------------------------------------------------

    "qai_hub"

    "qai_cloud"

    "qai_architecture"

    "qai_engineering"

    "qai_frameworks"

    # --------------------------------------------------------
    # Products
    # --------------------------------------------------------

    "qai_products"

    "qai_services"

    "qai_primitives"

    "qai_models"

    "qai_agents"

    "qai_workflows"

    # --------------------------------------------------------
    # Enterprise
    # --------------------------------------------------------

    "qai_security"

    "qai_validation"

    "qai_operations"

    "qai_ecosystems"

    # --------------------------------------------------------
    # Research
    # --------------------------------------------------------

    "qai_research"

    "qagi_qasi"

    "future_qai"

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
            $Title = "QAI"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy QAI curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " QAI structure created successfully"
Write-Host "==============================================="
Write-Host ""