# ==============================================================================
# FAEP Academy
# Phase 3 - Learning Portal Completion
# Creates remaining navigation pages only
# ==============================================================================

$Root = "E:\Bhadale IT\github\faep-education\academy"

#------------------------------------------------------------------------------
# Create additional folders
#------------------------------------------------------------------------------

$Folders = @(

"$Root\assets\diagrams",
"$Root\assets\screenshots"

)

foreach($Folder in $Folders)
{
    if(!(Test-Path $Folder))
    {
        New-Item -ItemType Directory -Path $Folder | Out-Null
        Write-Host "Created $Folder"
    }
}

#------------------------------------------------------------------------------
# Academy Pages
#------------------------------------------------------------------------------

$Files = @{

"navigation.md" = @"
# Academy Navigation

This page provides a single navigation point for all FAEP Academy learning resources.

## Start Here

- Getting Started
- Course Catalog
- Learning Journeys
- Learning Paths
- Roles

## Browse Resources

- Tutorials
- Labs
- Notebooks
- References
- Projects
- Templates

"@

"course_map.md" = @"
# Course Map

Foundations

↓

Artificial Intelligence

↓

Quantum Computing

↓

Hybrid Quantum Systems

↓

Intelligent Systems

↓

Enterprise Engineering

↓

Digital Twins

↓

Mission Systems

↓

Space Systems

↓

FAEP Ecosystem

"@

"learning_journeys.md" = @"
# Learning Journeys

Choose the journey that best matches your goals.

- Student
- Working Professional
- Researcher
- Enterprise Architect
- Startup Founder
- Educator

Each journey recommends a sequence of courses and projects.

"@

"contributing_as_student.md" = @"
# Contributing as a Student

1. Fork the repository

2. Clone your fork

3. Complete tutorials

4. Run notebooks

5. Complete labs

6. Build projects

7. Commit your work

8. Share your portfolio

"@

"MY_FAEP_JOURNEY_TEMPLATE.md" = @"
# My FAEP Journey

## Learning Goals

---

## Current Learning Path

---

## Courses Completed

- [ ]

---

## Labs Completed

- [ ]

---

## Projects Completed

- [ ]

---

## Skills Learned

---

## Notes

---

## Next Milestone

"@

"student_portfolio.md" = @"
# Student Portfolio

Track your engineering portfolio.

## GitHub Repository

## Projects

## Notebooks

## Labs

## Research

## Presentations

## Publications

"@

}

foreach($File in $Files.Keys)
{
    $Path = Join-Path $Root $File

    if(!(Test-Path $Path))
    {
        $Files[$File] | Set-Content $Path
        Write-Host "Created $File"
    }
}

Write-Host ""
Write-Host "========================================"
Write-Host " FAEP Academy Phase 3 Completed"
Write-Host "========================================"