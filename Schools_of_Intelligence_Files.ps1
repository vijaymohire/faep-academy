# ============================================================================
# FAEP Academy - Schools of Intelligence
# Folder Structure Creation Script
# Version : 1.0
# ============================================================================

$Root = "schools_of_intelligence"

#----------------------------------------------------------------------------
# Create Root
#----------------------------------------------------------------------------

New-Item -ItemType Directory -Force -Path $Root | Out-Null

#----------------------------------------------------------------------------
# Root Documents
#----------------------------------------------------------------------------

@(
    "README.md",
    "ROADMAP.md",
    "LEARNING_PHILOSOPHY.md",
    "CAREER_FRAMEWORK.md",
    "CERTIFICATION_FRAMEWORK.md"
) | ForEach-Object {

    New-Item `
        -ItemType File `
        -Force `
        -Path (Join-Path $Root $_) | Out-Null
}

#----------------------------------------------------------------------------
# Shared Resources
#----------------------------------------------------------------------------

$SharedResources = @(
    "mathematics",
    "engineering_foundations",
    "systems_engineering",
    "software_engineering",
    "quantum_computing",
    "artificial_intelligence",
    "digital_twins",
    "knowledge_graphs",
    "ethics_and_governance",
    "cybersecurity",
    "innovation",
    "entrepreneurship",
    "leadership",
    "project_management",
    "professional_skills"
)

foreach ($Folder in $SharedResources)
{
    New-Item `
        -ItemType Directory `
        -Force `
        -Path "$Root\shared_resources\$Folder" | Out-Null
}

#----------------------------------------------------------------------------
# Common School Structure
#----------------------------------------------------------------------------

$CommonFolders = @(
    "learning_paths",
    "roles",
    "competency_framework",
    "tutorials",
    "labs",
    "projects",
    "internships",
    "startup_accelerator",
    "certifications",
    "resources"
)

#----------------------------------------------------------------------------
# School Definitions
#----------------------------------------------------------------------------

$Schools = @{

    "school_of_human_intelligence" = @(
        "case_studies"
    )

    "school_of_artificial_intelligence" = @(
        "case_studies"
    )

    "school_of_autonomous_machines" = @(
        "robotics",
        "digital_workers",
        "validation"
    )

    "school_of_human_machine_collaboration" = @()

    "school_of_collective_intelligence" = @(
        "multi_agent_systems",
        "federated_intelligence",
        "digital_ecosystems"
    )

    "school_of_emergent_intelligence" = @(
        "complex_systems",
        "adaptive_systems",
        "future_research"
    )
}

#----------------------------------------------------------------------------
# Create Schools
#----------------------------------------------------------------------------

foreach ($School in $Schools.Keys)
{
    $SchoolPath = Join-Path $Root $School

    New-Item `
        -ItemType Directory `
        -Force `
        -Path $SchoolPath | Out-Null

    foreach ($Folder in $CommonFolders)
    {
        New-Item `
            -ItemType Directory `
            -Force `
            -Path "$SchoolPath\$Folder" | Out-Null
    }

    foreach ($Folder in $Schools[$School])
    {
        New-Item `
            -ItemType Directory `
            -Force `
            -Path "$SchoolPath\$Folder" | Out-Null
    }
}

Write-Host ""
Write-Host "==============================================" -ForegroundColor Green
Write-Host " Schools of Intelligence structure created."
Write-Host "==============================================" -ForegroundColor Green