# ============================================================
# FAEP Academy - Foundations Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\foundations"

$Folders = @(

    ""

    # Existing Foundations
    "getting_started"
    "learning_paths"
    "terminology"
    "scientific_method"
    "computational_thinking"
    "engineering_mindset"
    "problem_solving"
    "systems_thinking"

    # New Computing Foundations
    "computing_foundations"
    "information_foundations"
    "mathematics"
    "physics"
    "software_foundations"
    "distributed_systems"
    "operating_systems"
    "runtime_systems"
    "protocols"
    "data_representation"
    "memory_models"
    "execution_models"
    "hybrid_computing"

    # QAI Foundations
    "qai_computing_foundations"
    "qai_communication_foundations"
    "information_fabric"

    # Future
    "future_computing"
)

# ------------------------------------------------------------
# Create Root
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
            $Title = "Foundations"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Foundations curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Foundations structure updated successfully"
Write-Host "==============================================="
Write-Host ""