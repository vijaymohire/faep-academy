###############################################################################
# FAEP Academy v2.0
# Architecture Layer Bootstrap
#
# Safe Script
# - Creates ONLY missing folders
# - Creates README.md ONLY if missing
# - Never overwrites existing files
###############################################################################

$Root = "E:\Bhadale IT\github\faep-education\academy"

$Folders = @(

    "architecture",

    "metadata",

    "taxonomy",

    "knowledge_graph",

    "control_planes",

    "personalization",

    "standards",

    "competencies_framework",

    "analytics"

)

foreach($folder in $Folders)
{
    $path = Join-Path $Root $folder

    if(!(Test-Path $path))
    {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created Folder : $folder"
    }
    else
    {
        Write-Host "Exists         : $folder"
    }

    $readme = Join-Path $path "README.md"

    if(!(Test-Path $readme))
    {
@"
# $(Split-Path $path -Leaf)

> Work in Progress

This folder contains the architecture documentation for the FAEP Academy.

"@ | Set-Content $readme

        Write-Host "Created README : $folder"
    }
    else
    {
        Write-Host "README Exists  : $folder"
    }
}

###############################################################################
# Architecture Documents
###############################################################################

$Files = @{

"architecture" = @(
"academy_reference_architecture.md",
"learning_experience_architecture.md",
"personalization_architecture.md",
"knowledge_graph_architecture.md",
"control_plane_architecture.md",
"repository_architecture.md"
)

"metadata" = @(
"metadata_schema.md",
"mega_tags.md",
"metadata_examples.md",
"metadata_dictionary.md",
"yaml_reference.md"
)

"taxonomy" = @(
"roles.md",
"levels.md",
"competencies.md",
"skills.md",
"industries.md",
"certifications.md",
"career_paths.md"
)

"knowledge_graph" = @(
"ontology.md",
"graph_nodes.md",
"graph_relationships.md",
"graph_queries.md",
"graph_examples.md"
)

"control_planes" = @(
"learning_control_plane.md",
"content_control_plane.md",
"competency_control_plane.md",
"assessment_control_plane.md",
"portfolio_control_plane.md",
"analytics_control_plane.md",
"research_control_plane.md"
)

"personalization" = @(
"personalization_engine.md",
"recommendation_engine.md",
"learning_journeys.md",
"adaptive_learning.md"
)

"standards" = @(
"course_standard.md",
"tutorial_standard.md",
"lab_standard.md",
"notebook_standard.md",
"project_standard.md",
"metadata_standard.md",
"navigation_standard.md"
)

"competencies_framework" = @(
"competency_framework.md",
"competency_matrix.md",
"skill_levels.md",
"assessment_model.md"
)

"analytics" = @(
"learning_metrics.md",
"progress_tracking.md",
"learning_analytics.md",
"dashboards.md"
)

}

foreach($folder in $Files.Keys)
{
    $FolderPath = Join-Path $Root $folder

    foreach($file in $Files[$folder])
    {
        $FullFile = Join-Path $FolderPath $file

        if(!(Test-Path $FullFile))
        {

@"
# $($file.Replace(".md",""))

> Work in Progress

## Purpose

Describe the architecture and implementation of **$($file.Replace(".md",""))** within the FAEP Academy.

---

## Overview

_To be completed._

---

## References

_To be completed._

"@ | Set-Content $FullFile

            Write-Host "Created File   : $file"
        }
        else
        {
            Write-Host "Exists         : $file"
        }
    }
}

Write-Host ""
Write-Host "========================================="
Write-Host "FAEP Academy Architecture Bootstrap Done."
Write-Host "========================================="