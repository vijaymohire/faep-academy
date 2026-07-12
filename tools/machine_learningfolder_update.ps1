# ============================================================
# FAEP Academy - Machine Learning Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\machine_learning"

$Folders = @(

    ""

    # Existing
    "agents"
    "deep_learning"
    "evaluation"
    "rag"
    "reinforcement_learning"
    "supervised"
    "transformers"
    "unsupervised"

    # New
    "ml_foundations"
    "supervised_learning"
    "unsupervised_learning"
    "generative_ai"
    "llms"
    "agentic_ai"
    "mlops"
    "model_validation"
    "deployment"
    "quantum_machine_learning"
    "hybrid_ai_quantum_models"
    "qai_models"
    "future_learning_systems"

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
            $Title = "Machine Learning"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Machine Learning curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Machine Learning structure updated successfully"
Write-Host "==============================================="
Write-Host ""