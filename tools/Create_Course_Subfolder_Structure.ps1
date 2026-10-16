# ============================================================
# FAEP Academy
# Python Programming Course
# Create Standard Course Subfolder Structure
# ============================================================

$CourseRoot = "E:\Bhadale IT\github\faep-education\academy\courses\python_programming"

#------------------------------------------------------------
# Define folders to create
#------------------------------------------------------------

$Folders = @(

    # -------------------------------------------------------
    # Notebooks
    # -------------------------------------------------------
    "notebooks\beginner",
    "notebooks\intermediate",
    "notebooks\advanced",

    # -------------------------------------------------------
    # Exercises
    # -------------------------------------------------------
    "exercises\NB001",
    "exercises\NB002",
    "exercises\NB003",
    "exercises\NB004",
    "exercises\NB005",
    "exercises\NB006",
    "exercises\NB007",
    "exercises\NB008",
    "exercises\NB009",
    "exercises\NB010",

    # -------------------------------------------------------
    # Solutions
    # -------------------------------------------------------
    "solutions\NB001",
    "solutions\NB002",
    "solutions\NB003",
    "solutions\NB004",
    "solutions\NB005",
    "solutions\NB006",
    "solutions\NB007",
    "solutions\NB008",
    "solutions\NB009",
    "solutions\NB010",

    # -------------------------------------------------------
    # Projects
    # -------------------------------------------------------
    "projects\guided",
    "projects\independent",
    "projects\capstone",

    # -------------------------------------------------------
    # Datasets
    # -------------------------------------------------------
    "datasets\NB001",
    "datasets\NB002",
    "datasets\NB003",
    "datasets\NB004",
    "datasets\NB005",
    "datasets\NB006",
    "datasets\NB007",
    "datasets\NB008",
    "datasets\NB009",
    "datasets\NB010",
    "datasets\shared",

    # -------------------------------------------------------
    # Images
    # -------------------------------------------------------
    "images\diagrams",
    "images\flowcharts",
    "images\screenshots",
    "images\charts",
    "images\infographics",

    # -------------------------------------------------------
    # Downloads
    # -------------------------------------------------------
    "downloads\cheat_sheets",
    "downloads\notebook_packages",
    "downloads\project_templates",
    "downloads\study_guides",
    "downloads\release_assets",

    # -------------------------------------------------------
    # References
    # -------------------------------------------------------
    "references\official",
    "references\books",
    "references\articles",
    "references\videos",
    "references\papers",
    "references\standards"
)

#------------------------------------------------------------
# Create folders
#------------------------------------------------------------

foreach ($Folder in $Folders)
{
    $Path = Join-Path $CourseRoot $Folder

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path | Out-Null
        Write-Host "Created Folder: $Path"
    }
}

#------------------------------------------------------------
# Create README.md in every subfolder
#------------------------------------------------------------

foreach ($Folder in $Folders)
{
    $Readme = Join-Path (Join-Path $CourseRoot $Folder) "README.md"

    if (!(Test-Path $Readme))
    {
        New-Item -ItemType File -Path $Readme | Out-Null
        Write-Host "Created File: $Readme"
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host "FAEP Python Programming course created."
Write-Host "Standard course structure initialized."
Write-Host "==============================================="