# ============================================================
# FAEP Academy - Intelligence Maturity Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\intelligent_systems\intelligence_maturity"

$Folders = @(

    ""

    "classical_intelligent_systems"

    "ai_intelligent_systems"

    "hybrid_classical_ai_systems"

    "hybrid_classical_quantum_systems"

    "qai_intelligent_systems"

    "qagi_systems"

    "qasi_systems"

    "federated_autonomous_ecosystems"

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
            $Title = "Intelligence Maturity"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Intelligent Systems curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Intelligence Maturity structure created"
Write-Host "==============================================="
Write-Host ""