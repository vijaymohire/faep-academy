# Shared repository folders

$folders = @(
    "assets",
    "blueprints",
    "diagrams",
    "images",
    "notebooks",
    "references",
    "samples",
    "templates"
)

foreach ($folder in $folders)
{
    if (!(Test-Path $folder))
    {
        New-Item -ItemType Directory -Path $folder -Force
    }

    New-Item -ItemType File -Path "$folder\README.md" -Force

    @"
# $folder

## Purpose

This folder contains shared repository assets.

## Contents

Work in progress.

## Notes

See repository documentation for details.
"@ | Set-Content "$folder\README.md"
}