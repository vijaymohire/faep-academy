# ==========================================================
# FAEP Education - Tacit Knowledge Expansion
# Creates new folders and placeholder README.md files
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education"

$folders = @(

# ----------------------------------------------------------
# Tutorials
# ----------------------------------------------------------
"tutorials\tacit_knowledge",
"tutorials\engineering_memory",
"tutorials\organizational_intelligence",

# ----------------------------------------------------------
# Labs
# ----------------------------------------------------------
"labs\tacit_knowledge_lab",

# ----------------------------------------------------------
# Notebooks
# ----------------------------------------------------------
"notebooks\tacit_knowledge",
"notebooks\engineering_memory",

# ----------------------------------------------------------
# References
# ----------------------------------------------------------
"references\tacit_knowledge",

# ----------------------------------------------------------
# Case Studies
# ----------------------------------------------------------
"case_studies\tacit_knowledge",

# ----------------------------------------------------------
# Samples
# ----------------------------------------------------------
"samples\tacit_examples",

# ----------------------------------------------------------
# Projects
# ----------------------------------------------------------
"projects\tacit_fabric",
"projects\engineering_memory",

# ----------------------------------------------------------
# Academy Courses
# ----------------------------------------------------------
"academy\courses\tacit_knowledge",

# ----------------------------------------------------------
# Frameworks (Future)
# ----------------------------------------------------------
"frameworks\tacit_intelligence_framework"

)

foreach ($folder in $folders)
{
    $path = Join-Path $root $folder

    if (!(Test-Path $path))
    {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created $folder"
    }

    $readme = Join-Path $path "README.md"

    if (!(Test-Path $readme))
    {
        "# " + (Split-Path $folder -Leaf).Replace("_"," ") |
            Set-Content $readme

        Add-Content $readme ""
        Add-Content $readme "Work in Progress."
    }
}

Write-Host ""
Write-Host "======================================="
Write-Host " Tacit Knowledge folders created."
Write-Host "======================================="