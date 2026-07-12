# ============================================================
# FAEP Academy - Intelligent Systems Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\intelligent_systems"

$Folders = @(

    ""

    # Existing
    "autonomous_agents"
    "cyber_physical_systems"
    "drones"
    "mission_systems"
    "robotics"
    "space_systems"

    # New
    "autonomous_systems"
    "multi_agent_systems"
    "industrial_systems"
    "transportation_systems"
    "healthcare_systems"
    "defence_systems"
    "ecosystem_systems"
    "swarm_systems"
    "intelligent_infrastructure"
    "future_intelligent_systems"

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
            $Title = "Intelligent Systems"
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
Write-Host " Intelligent Systems updated successfully"
Write-Host "==============================================="
Write-Host ""