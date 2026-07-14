# ==============================================================================
# FAEP Academy - Phase 2.5 + 2.6 + 2.7
# Learning Tracks + Roles + Course Templates
# ==============================================================================

$Root = "E:\Bhadale IT\github\faep-education\academy"

# ------------------------------------------------------------------------------
# Create folders
# ------------------------------------------------------------------------------

$Folders = @(

"$Root\learning_tracks",
"$Root\roles",
"$Root\templates"

)

foreach($Folder in $Folders)
{
    if(!(Test-Path $Folder))
    {
        New-Item -ItemType Directory -Path $Folder | Out-Null
        Write-Host "Created $Folder"
    }
}

# ------------------------------------------------------------------------------
# Learning Tracks
# ------------------------------------------------------------------------------

$Tracks = @(

"student",
"working_professional",
"researcher",
"enterprise_architect",
"startup_founder",
"educator"

)

foreach($Track in $Tracks)
{
    $File = "$Root\learning_tracks\$Track.md"

    if(!(Test-Path $File))
    {

@"
# $Track

## Who is this learning path for?

(To be completed)

---

## Recommended Starting Point

(To be completed)

---

## Suggested Course Sequence

1.
2.
3.
4.

---

## Recommended Labs

---

## Recommended Projects

---

## Estimated Duration

---

## Career Opportunities

---

## Next Learning Path

"@ | Set-Content $File

        Write-Host "Created $Track"
    }
}

# ------------------------------------------------------------------------------
# Professional Roles
# ------------------------------------------------------------------------------

$Roles = @(

"ai_engineer",
"quantum_engineer",
"platform_engineer",
"systems_engineer",
"enterprise_architect",
"solution_architect",
"research_scientist",
"robotics_engineer",
"space_systems_engineer",
"mission_systems_engineer",
"digital_twin_engineer",
"startup_founder",
"technology_consultant"

)

foreach($Role in $Roles)
{
    $File = "$Root\roles\$Role.md"

    if(!(Test-Path $File))
    {

@"
# $Role

## Role Overview

(To be completed)

---

## Skills Required

---

## Recommended Learning Path

---

## Recommended Courses

---

## Hands-on Labs

---

## Projects

---

## Suggested Certifications

---

## Career Progression

"@ | Set-Content $File

        Write-Host "Created $Role"
    }
}

# ------------------------------------------------------------------------------
# Templates
# ------------------------------------------------------------------------------

$Templates = @(

"course_index_template",
"syllabus_template",
"learning_path_template",
"course_plan_template",
"lab_guide_template",
"project_template",
"quiz_template",
"progress_tracker_template",
"competency_matrix_template"

)

foreach($Template in $Templates)
{
    $File = "$Root\templates\$Template.md"

    if(!(Test-Path $File))
    {

@"
# TEMPLATE

## Overview

---

## Objectives

---

## Prerequisites

---

## Content

---

## Exercises

---

## Resources

---

## References

---

## Notes

"@ | Set-Content $File

        Write-Host "Created $Template"
    }
}

Write-Host ""
Write-Host "==========================================="
Write-Host " FAEP Academy Learning Framework Ready"
Write-Host "==========================================="