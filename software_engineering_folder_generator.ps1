# ============================================================
# FAEP Academy - Software Engineering Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\software_engineering"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Core Software Engineering
    # --------------------------------------------------------

    "software_foundations"

    "software_architecture"

    "software_design"

    "software_patterns"

    "requirements_engineering"

    "verification_validation"

    "software_testing"

    "software_quality"

    "software_security"

    "software_lifecycle"

    "software_modernization"

    "software_documentation"

    # --------------------------------------------------------
    # Engineering Practices
    # --------------------------------------------------------

    "devops"

    "platform_engineering"

    "engineering_metrics"

    "software_governance"

    "engineering_standards"

    # --------------------------------------------------------
    # Future Engineering
    # --------------------------------------------------------

    "ai_software_engineering"

    "qai_software_engineering"

    "qagi_engineering"

    "qasi_engineering"

    "future_software_engineering"

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
            $Title = "Software Engineering"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Software Engineering curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Software Engineering structure created successfully"
Write-Host "==============================================="
Write-Host ""