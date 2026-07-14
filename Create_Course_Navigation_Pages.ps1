# ==============================================================================
# FAEP Academy - Phase 2
# Create Course Navigation Pages
# ==============================================================================

$Root = "E:\Bhadale IT\github\faep-education"

$Courses = @(
"foundations",
"artificial_intelligence",
"quantum_computing",
"hybrid_quantum_systems",
"intelligent_systems",
"enterprise_engineering",
"digital_twins",
"robotics",
"cyber_physical_systems",
"mission_systems",
"space_systems",
"qai_platform_engineering",
"ecosystem_intelligence",
"research_engineering",
"innovation",
"professional_development"
)

foreach($Course in $Courses)
{
    $Folder = "$Root\academy\courses\$Course"

    if(!(Test-Path $Folder))
    {
        New-Item -ItemType Directory -Path $Folder | Out-Null
        Write-Host "Created $Folder"
    }

    $Readme = "$Folder\README.md"

    if(!(Test-Path $Readme))
    {
@"
# $Course

> Course landing page.

## Overview

(To be completed)

---

## Learning Objectives

---

## Prerequisites

---

## Estimated Duration

---

## Course Resources

- Tutorial
- Labs
- Notebooks
- References
- Code Samples
- Projects
- Quiz

---

## Learning Progress

- [ ] Read Tutorial
- [ ] Complete Labs
- [ ] Execute Notebook
- [ ] Complete Project
- [ ] Review References

---

## Next Course

(To be completed)

"@ | Set-Content $Readme

        Write-Host "Created README for $Course"
    }
}