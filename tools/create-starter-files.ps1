# create-starter-files.ps1

$folders = @(
"architecture_patterns",
"case_studies",
"cloud40",
"community",
"digital_twins",
"ecosystem_engineering",
"faep",
"global_campus_mesh",
"industry50",
"innovation_campus",
"knowledge_graphs",
"labs",
"qai",
"qai_engineering",
"research_intelligence",
"roadmap",
"society50",
"software_engineering",
"student_learning_tracks",
"systems_engineering",
"tutorials"
)

foreach ($folder in $folders)
{
    New-Item -ItemType File -Path "$folder\README.md" -Force

    @"
# $folder

## Overview

Work in progress.

## Concepts

TBD

## Architecture

TBD

## Roadmap

TBD

## References

TBD
"@ | Set-Content "$folder\README.md"
}