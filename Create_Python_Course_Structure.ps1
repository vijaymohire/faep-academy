# ============================================================
# FAEP Academy
# Create Python Programming Course Structure
# ============================================================

$CourseRoot = "E:\Bhadale IT\github\faep-education\academy\courses\python_programming"

#--------------------------------------------------------------
# Create folders
#--------------------------------------------------------------

$Folders = @(
    "",
    "notebooks",
    "exercises",
    "solutions",
    "projects",
    "datasets",
    "images",
    "downloads",
    "references"
)

foreach ($Folder in $Folders)
{
    $Path = Join-Path $CourseRoot $Folder

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path | Out-Null
        Write-Host "Created: $Path"
    }
}

#--------------------------------------------------------------
# Create README files
#--------------------------------------------------------------

$ReadmeFiles = @(
    "$CourseRoot\README.md",
    "$CourseRoot\notebooks\README.md",
    "$CourseRoot\exercises\README.md",
    "$CourseRoot\solutions\README.md",
    "$CourseRoot\projects\README.md",
    "$CourseRoot\datasets\README.md",
    "$CourseRoot\images\README.md",
    "$CourseRoot\downloads\README.md",
    "$CourseRoot\references\README.md"
)

foreach ($File in $ReadmeFiles)
{
    if (!(Test-Path $File))
    {
        New-Item -ItemType File -Path $File | Out-Null
        Write-Host "Created: $File"
    }
}

Write-Host ""
Write-Host "============================================="
Write-Host "Python Programming course structure created."
Write-Host "============================================="