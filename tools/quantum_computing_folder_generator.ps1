# ============================================================
# FAEP Academy - Quantum Computing Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\quantum_computing"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Foundations
    # --------------------------------------------------------

    "quantum_foundations"

    "quantum_information"

    "quantum_algorithms"

    "quantum_hardware"

    "quantum_programming"

    "quantum_networks"

    "quantum_memory"

    "quantum_error_correction"

    "fault_tolerant_quantum"

    "hybrid_quantum"

    # --------------------------------------------------------
    # Applications
    # --------------------------------------------------------

    "quantum_applications"

    # --------------------------------------------------------
    # QAI Integration
    # --------------------------------------------------------

    "qai_quantum_integration"

    # --------------------------------------------------------
    # Future
    # --------------------------------------------------------

    "future_quantum_computing"

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
            $Title = "Quantum Computing"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Quantum Computing curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Quantum Computing structure created successfully"
Write-Host "==============================================="
Write-Host ""