# ==============================================================================
# FAEP Academy Sprint 21
# Portfolio / Research / Professional Development Expansion
#
# Safe to run multiple times.
# Creates only missing folders and README files.
# ==============================================================================

$Root = Get-Location

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host " FAEP Academy Sprint 21 Expansion"
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

#-------------------------------------------------------
# Helper Functions
#-------------------------------------------------------

function Ensure-Folder {
    param($Folder)

    if (!(Test-Path $Folder)) {
        New-Item -ItemType Directory -Force -Path $Folder | Out-Null
        Write-Host "[Created] $Folder" -ForegroundColor Green
    }
}

function Ensure-Readme {
    param($Folder)

    $Readme = Join-Path $Folder "README.md"

    if (!(Test-Path $Readme)) {

        $Name = Split-Path $Folder -Leaf

@"
# $Name

> Work In Progress

## Purpose

Describe the purpose of this section.

## Contents

- Overview
- References
- Examples

"@ | Set-Content $Readme

        Write-Host "[Created] $Readme" -ForegroundColor Yellow
    }
}

#-------------------------------------------------------
# Schools of Intelligence
#-------------------------------------------------------

$Schools = @(
"school_of_artificial_intelligence",
"school_of_autonomous_machines",
"school_of_collective_intelligence",
"school_of_emergent_intelligence",
"school_of_human_intelligence",
"school_of_human_machine_collaboration"
)

$NewFolders = @(
"portfolio",
"research",
"publications",
"innovation",
"assets",
"profile_templates",
"professional_development"
)

foreach($School in $Schools){

    $Base = Join-Path $Root "schools_of_intelligence\$School"

    foreach($Folder in $NewFolders){

        $Path = Join-Path $Base $Folder

        Ensure-Folder $Path
        Ensure-Readme $Path

    }
}

#-------------------------------------------------------
# Academy Profiles
#-------------------------------------------------------

$Academy = Join-Path $Root "academy"

Ensure-Folder "$Academy\profiles"

Ensure-Folder "$Academy\profiles\reference_student"

$Files = @(
"PROFILE.md",
"PORTFOLIO.md",
"PROJECTS.md",
"PUBLICATIONS.md",
"RESEARCH.md",
"PATENTS.md",
"PRESENTATIONS.md",
"DIGITAL_PRESENCE.md",
"LINKS.md",
"CAREER_ROADMAP.md"
)

foreach($File in $Files){

    $Path = Join-Path "$Academy\profiles\reference_student" $File

    if(!(Test-Path $Path)){

@"
# $($File.Replace(".md",""))

Work In Progress

"@ | Set-Content $Path

        Write-Host "[Created] $Path" -ForegroundColor Cyan

    }

}

#-------------------------------------------------------
# Asset Registry
#-------------------------------------------------------

Ensure-Folder "$Academy\asset_registry"

$Registry = @(
"README.md",
"asset_catalog.md",
"asset_types.md",
"asset_metadata.md",
"asset_discovery.md",
"asset_lifecycle.md",
"asset_ownership.md",
"asset_classification.md",
"asset_dependencies.md",
"asset_quality.md"
)

foreach($File in $Registry){

    $Path = Join-Path "$Academy\asset_registry" $File

    if(!(Test-Path $Path)){

@"
# $($File.Replace(".md",""))

Work In Progress

"@ | Set-Content $Path

    }

}

#-------------------------------------------------------
# Publication Framework
#-------------------------------------------------------

Ensure-Folder "publications\conference_papers"
Ensure-Folder "publications\journal_papers"
Ensure-Folder "publications\technical_reports"
Ensure-Folder "publications\books"
Ensure-Folder "publications\posters"

#-------------------------------------------------------
# Shared Professional Assets
#-------------------------------------------------------

Ensure-Folder "professional_development\student_profiles"
Ensure-Folder "professional_development\professional_portfolios"
Ensure-Folder "professional_development\publication_guides"
Ensure-Folder "professional_development\membership_guides"
Ensure-Folder "professional_development\career_evidence"

#-------------------------------------------------------
# Shared Templates
#-------------------------------------------------------

Ensure-Folder "academy\templates\portfolio_templates"

$Templates = @(
"profile_template.md",
"digital_presence_template.md",
"publication_template.md",
"research_template.md",
"portfolio_template.md",
"project_portfolio_template.md"
)

foreach($Template in $Templates){

    $Path = Join-Path "academy\templates\portfolio_templates" $Template

    if(!(Test-Path $Path)){

@"
# Template

Work In Progress

"@ | Set-Content $Path

    }

}

Write-Host ""
Write-Host "==============================================" -ForegroundColor Green
Write-Host " Sprint 21 Expansion Complete"
Write-Host "==============================================" -ForegroundColor Green
Write-Host ""