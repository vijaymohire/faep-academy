# ==========================================================
# FAEP Education - Templates Structure Update
# Preserves existing files
# Creates new templates and documentation standards
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education\templates"

# ----------------------------------------------------------
# New template files
# ----------------------------------------------------------

$newFiles = @(

    "ASSESSMENT_TEMPLATE.md"
    "BOOK_TEMPLATE.md"
    "CAPSTONE_TEMPLATE.md"
    "CASE_STUDY_TEMPLATE.md"
    "LAB_TEMPLATE.md"
    "NOTEBOOK_TEMPLATE.md"
    "PATTERN_TEMPLATE.md"
    "PROJECT_TEMPLATE.md"
    "REFERENCE_TEMPLATE.md"
    "REPOSITORY_TEMPLATE.md"
    "SAMPLE_TEMPLATE.md"
    "TUTORIAL_TEMPLATE.md"
    "WHITEPAPER_TEMPLATE.md"

    "AUTHORING_GUIDE.md"
    "DOCUMENTATION_STANDARDS.md"
)

foreach ($file in $newFiles)
{
    $path = Join-Path $root $file

    if (!(Test-Path $path))
    {
        $title = [System.IO.Path]::GetFileNameWithoutExtension($file)
        $title = $title.Replace("_"," ")

@"
# $title

> FAEP Education

> TODO

"@ | Set-Content $path -Encoding UTF8

        Write-Host "Created File : $file"
    }
    else
    {
        Write-Host "Exists       : $file"
    }
}

# ----------------------------------------------------------
# New folders
# ----------------------------------------------------------

$newFolders = @(

    "patterns"

)

foreach ($folder in $newFolders)
{
    $folderPath = Join-Path $root $folder

    if (!(Test-Path $folderPath))
    {
        New-Item -ItemType Directory -Path $folderPath | Out-Null
        Write-Host "Created Folder : $folder"
    }

    $readme = Join-Path $folderPath "README.md"

    if (!(Test-Path $readme))
    {
@"
# $folder

> FAEP Education

> TODO

"@ | Set-Content $readme -Encoding UTF8

        Write-Host "Created README : $folder"
    }
}

Write-Host ""
Write-Host "========================================="
Write-Host "FAEP Templates updated successfully."
Write-Host "========================================="