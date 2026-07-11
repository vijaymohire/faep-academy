# ============================================================
# FAEP Academy - Ecosystem Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\ecosystem"

$Folders = @(

    ""

    "ecosystem_foundations"

    "ecosystem_architecture"

    "innovation_ecosystems"

    "intelligent_factories"

    "innovation_valleys"

    "smart_cities"

    "autonomous_zones"

    "provincial_ecosystems"

    "national_ecosystems"

    "global_ecosystems"

    "space_ecosystems"

    "governance"

    "stakeholder_management"

    "change_management"

    "sustainability"

    "future_ecosystems"
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
            $Title = "Ecosystem"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Ecosystem curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Ecosystem structure created successfully"
Write-Host "==============================================="
Write-Host ""