# ==============================================================================
# FAEP Academy Learning Layer Bootstrap
# Creates Academy navigation layer without moving existing content
# ==============================================================================

$Root = "E:\Bhadale IT\github\faep-education"

$Folders = @(

"$Root\academy",

"$Root\academy\assets",
"$Root\academy\assets\images",
"$Root\academy\assets\icons",
"$Root\academy\assets\templates",

"$Root\academy\courses",

"$Root\academy\learning_paths",
"$Root\academy\roles",
"$Root\academy\templates"

)

foreach($Folder in $Folders)
{
    if(!(Test-Path $Folder))
    {
        New-Item -ItemType Directory -Path $Folder | Out-Null
        Write-Host "Created $Folder"
    }
}

$Files = @(

"$Root\academy\README.md",

"$Root\academy\getting_started.md",

"$Root\academy\course_catalog.md",

"$Root\academy\learning_paths.md",

"$Root\academy\competencies.md",

"$Root\academy\certifications.md",

"$Root\academy\roadmap.md",

"$Root\academy\faq.md"

)

foreach($File in $Files)
{
    if(!(Test-Path $File))
    {
        New-Item -ItemType File -Path $File | Out-Null
        Write-Host "Created $File"
    }
}