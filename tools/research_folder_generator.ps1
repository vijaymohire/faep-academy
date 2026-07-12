# ============================================================
# FAEP Academy - Research Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\research"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Core Research
    # --------------------------------------------------------

    "algorithms"

    "benchmarks"

    "papers"

    "publications"

    "simulations"

    "literature_reviews"

    "research_methods"

    "experimental_design"

    "datasets"

    "validation"

    "prototypes"

    "proof_of_concepts"

    # --------------------------------------------------------
    # Innovation
    # --------------------------------------------------------

    "innovation"

    "patent_candidates"

    "technology_roadmaps"

    "technology_transfer"

    "commercialization"

    # --------------------------------------------------------
    # Research Domains
    # --------------------------------------------------------

    "quantum_information_science"

    "hybrid_ai_quantum"

    "digital_twins"

    "engineering_models"

    "scientific_models"

    # --------------------------------------------------------
    # Collaboration
    # --------------------------------------------------------

    "standards_research"

    "collaborations"

    "grants"

    "open_source"

    "research_infrastructure"

    # --------------------------------------------------------
    # Future
    # --------------------------------------------------------

    "future_technologies"

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
            $Title = "Research"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Research curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Research structure created successfully"
Write-Host "==============================================="
Write-Host ""