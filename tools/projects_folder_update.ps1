# ============================================================
# FAEP Academy - Projects Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\projects"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Existing
    # --------------------------------------------------------

    "beginner"

    "intermediate"

    "advanced"

    "capstone"

    # --------------------------------------------------------
    # New
    # --------------------------------------------------------

    "domain_projects"

    "industry_projects"

    "research_projects"

    "startup_projects"

    "innovation_projects"

    "internships"

    "practicum"

    "industrial_visits"

    "collaborative_projects"

    "competitions"

    "portfolio_projects"

    "future_projects"

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
            $Title = "Projects"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Projects curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Projects structure updated successfully"
Write-Host "==============================================="
Write-Host ""