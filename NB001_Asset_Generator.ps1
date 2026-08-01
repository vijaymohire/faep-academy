# ===============================================================
# FAEP Academy
# Python Programming Course
# NB001 Asset Generator
# ===============================================================

$CourseRoot = "E:\Bhadale IT\github\faep-education\academy\courses\python_programming"

# ===============================================================
# Helper Function
# ===============================================================

function New-PlaceholderFile
{
    param(
        [string]$Path,
        [string]$Title
    )

    if (!(Test-Path $Path))
    {
        @"
# $Title

> FAEP Academy Placeholder

Status: Planned

This file will be populated during course development.
"@ | Set-Content $Path -Encoding UTF8

        Write-Host "Created: $Path"
    }
}

# ===============================================================
# NB001 Exercises
# ===============================================================

$ExerciseFolder = Join-Path $CourseRoot "exercises\NB001"

$Exercises = @(
"EX001_Variables.md",
"EX002_Data_Types.md",
"EX003_Operators.md",
"EX004_Conditionals.md",
"EX005_Loops.md",
"EX006_Functions.md",
"EX007_Lists.md",
"EX008_NumPy.md",
"EX009_Pandas.md",
"EX010_Matplotlib.md"
)

foreach($File in $Exercises)
{
    New-PlaceholderFile `
        -Path (Join-Path $ExerciseFolder $File) `
        -Title ($File.Replace(".md",""))
}

# ===============================================================
# Solution Notebook Placeholder
# ===============================================================

$SolutionFolder = Join-Path $CourseRoot "solutions\NB001"

New-PlaceholderFile `
    -Path (Join-Path $SolutionFolder "NB001_Python_Jupyter_Foundations_Solutions.md") `
    -Title "NB001 Solution Notebook"

# ===============================================================
# Dataset Placeholders
# ===============================================================

$DatasetFolder = Join-Path $CourseRoot "datasets\NB001"

$Datasets = @(
"DATA001_Sample_Numbers.csv",
"DATA002_Student_Scores.csv"
)

foreach($File in $Datasets)
{
    $Path = Join-Path $DatasetFolder $File

    if (!(Test-Path $Path))
    {
        "" | Set-Content $Path
        Write-Host "Created: $Path"
    }
}

# ===============================================================
# Project Placeholder
# ===============================================================

$ProjectFolder = Join-Path $CourseRoot "projects\guided"

New-PlaceholderFile `
    -Path (Join-Path $ProjectFolder "PRJ001_Python_Calculator.md") `
    -Title "Project 001 - Python Calculator"

# ===============================================================
# Image Placeholders
# ===============================================================

$ImageFolder = Join-Path $CourseRoot "images"

$ImageFiles = @(
"diagrams\IMG001_Python_Workflow.md",
"diagrams\IMG002_Control_Flow.md",
"flowcharts\IMG003_Function_Flow.md",
"screenshots\IMG004_Jupyter_Interface.md",
"charts\IMG005_Sample_Output.md",
"infographics\IMG006_Python_Learning_Path.md"
)

foreach($File in $ImageFiles)
{
    New-PlaceholderFile `
        -Path (Join-Path $ImageFolder $File) `
        -Title ($File.Replace(".md",""))
}

# ===============================================================
# Download Placeholders
# ===============================================================

$DownloadFolder = Join-Path $CourseRoot "downloads"

$Downloads = @(
"cheat_sheets\DL001_Python_Cheat_Sheet.md",
"study_guides\DL002_Python_Study_Guide.md",
"project_templates\DL003_Project_Template.md",
"release_assets\DL004_Release_Notes.md"
)

foreach($File in $Downloads)
{
    New-PlaceholderFile `
        -Path (Join-Path $DownloadFolder $File) `
        -Title ($File.Replace(".md",""))
}

# ===============================================================
# Reference Placeholders
# ===============================================================

$ReferenceFolder = Join-Path $CourseRoot "references"

$References = @(
"official\REF001_Python.md",
"official\REF002_Jupyter.md",
"official\REF003_NumPy.md",
"official\REF004_Pandas.md",
"books\REF101_Recommended_Books.md",
"articles\REF201_Programming_Articles.md",
"videos\REF301_Video_Resources.md",
"standards\REF401_Python_Best_Practices.md"
)

foreach($File in $References)
{
    New-PlaceholderFile `
        -Path (Join-Path $ReferenceFolder $File) `
        -Title ($File.Replace(".md",""))
}

Write-Host ""
Write-Host "==============================================="
Write-Host "NB001 course assets created successfully."
Write-Host "==============================================="