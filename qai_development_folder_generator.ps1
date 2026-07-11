# ============================================================
# FAEP Academy - QAI Development Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\development\qai_development"

$Folders = @(

    ""

    "qai_programming_model"

    "qai_data_structures"

    "qai_memory_model"

    "qai_storage_model"

    "qai_runtime"

    "qai_execution_model"

    "qai_workflow_engine"

    "qai_agents"

    "qai_security"

    "qai_api_design"

    "qai_sdk"

    "future_directions"
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
            $Title = "QAI Development"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy QAI Development curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " QAI Development structure created successfully"
Write-Host "==============================================="
Write-Host ""