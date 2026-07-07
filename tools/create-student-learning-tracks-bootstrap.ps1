# ==========================================================
# FAEP Academy - Student Learning Tracks Bootstrap Script
# Safe: Creates only missing folders and files
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education\student_learning_tracks"

# ----------------------------------------------------------
# Helper Functions
# ----------------------------------------------------------

function Ensure-Folder {
    param($Path)

    if (!(Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
        Write-Host "Created Folder: $Path"
    }
}

function Ensure-File {
    param($File)

    if (!(Test-Path $File)) {
        New-Item -ItemType File -Path $File | Out-Null
        Write-Host "Created File: $File"
    }
}

# ----------------------------------------------------------
# Top-Level Folders
# ----------------------------------------------------------

$folders = @(

"foundations",
"intermediate",
"advanced",

"mit_path",
"qai_path",

"research",
"certifications"

)

foreach($f in $folders){

    $folder = Join-Path $root $f

    Ensure-Folder $folder
    Ensure-File (Join-Path $folder "README.md")

}

# ----------------------------------------------------------
# Engineering Tracks
# ----------------------------------------------------------

$tracks = @(

"digital_twin_engineering",
"faep_ecosystem_engineering",
"ftqc_engineering",
"human_sovereignty_engineering",
"qagi_engineering",
"qai_architecture_engineering",
"qai_quantum_electronics",
"qasi_engineering",
"startup_engineering",
"world_model_engineering"

)

$trackFiles = @(

"README.md",
"syllabus.md",
"learning_objectives.md",
"roadmap.md",
"labs.md",
"projects.md",
"assignments.md",
"assessment.md",
"certification.md",
"references.md",
"recommended_books.md",
"career_paths.md"

)

foreach($track in $tracks){

    $trackFolder = Join-Path $root $track

    Ensure-Folder $trackFolder

    foreach($file in $trackFiles){

        Ensure-File (Join-Path $trackFolder $file)

    }

}

# ----------------------------------------------------------
# MIT Learning Path
# ----------------------------------------------------------

$mitFolders = @(

"mathematics",
"machine_learning",
"optimization",
"robotics",
"quantum",
"systems_engineering"

)

$mitRoot = Join-Path $root "mit_path"

foreach($folder in $mitFolders){

    $path = Join-Path $mitRoot $folder

    Ensure-Folder $path
    Ensure-File (Join-Path $path "README.md")

}

Ensure-File (Join-Path $mitRoot "capstone_project.md")

# ----------------------------------------------------------
# QAI Learning Path
# ----------------------------------------------------------

$qaiFolders = @(

"algorithms",
"data_structures",
"runtimes",
"architecture",
"engineering",
"patterns",
"technology",
"standards"

)

$qaiRoot = Join-Path $root "qai_path"

foreach($folder in $qaiFolders){

    $path = Join-Path $qaiRoot $folder

    Ensure-Folder $path
    Ensure-File (Join-Path $path "README.md")

}

Ensure-File (Join-Path $qaiRoot "capstone_project.md")

# ----------------------------------------------------------
# Research
# ----------------------------------------------------------

$researchFolders = @(

"paper_reading",
"paper_writing",
"experiments",
"benchmarking",
"validation",
"publications",
"patents"

)

$researchRoot = Join-Path $root "research"

foreach($folder in $researchFolders){

    $path = Join-Path $researchRoot $folder

    Ensure-Folder $path
    Ensure-File (Join-Path $path "README.md")

}

# ----------------------------------------------------------
# Startup Engineering
# ----------------------------------------------------------

$startupFolders = @(

"ideation",
"validation",
"business_models",
"fundraising",
"ip_strategy",
"commercialization",
"go_to_market"

)

$startupRoot = Join-Path $root "startup_engineering"

foreach($folder in $startupFolders){

    $path = Join-Path $startupRoot $folder

    Ensure-Folder $path
    Ensure-File (Join-Path $path "README.md")

}

# ----------------------------------------------------------
# Certifications
# ----------------------------------------------------------

$certFiles = @(

"foundation.md",
"associate.md",
"professional.md",
"expert.md",
"research_fellow.md"

)

$certRoot = Join-Path $root "certifications"

foreach($file in $certFiles){

    Ensure-File (Join-Path $certRoot $file)

}

Write-Host ""
Write-Host "========================================"
Write-Host "Student Learning Tracks Ready!"
Write-Host "========================================"