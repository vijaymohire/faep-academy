# ============================================================
# FAEP Academy - MIT Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\mit"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Existing
    # --------------------------------------------------------

    "learning"

    "matrix_methods"

    "optimization"

    "quantum_information"

    "robotics"

    # --------------------------------------------------------
    # New
    # --------------------------------------------------------

    "learning_path"

    "mathematics"

    "machine_learning"

    "quantum_information_science"

    "quantum_computing"

    "systems_engineering"

    "computational_thinking"

    "engineering_design"

    "qai_translation"

    "future_research"

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
            $Title = "MIT"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy MIT curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " MIT structure updated successfully"
Write-Host "==============================================="
Write-Host ""