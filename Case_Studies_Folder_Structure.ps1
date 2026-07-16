# ==========================================================
# FAEP Reference Library - Case Studies Folder Structure
# ==========================================================

$base = "E:\Bhadale IT\github\faep-education\references\case_studies"

# Create root folder
New-Item -ItemType Directory -Path $base -Force | Out-Null

# Create root README
New-Item -ItemType File -Path "$base\README.md" -Force | Out-Null

# Domain folders
$folders = @(
    "artificial_intelligence",
    "cybersecurity",
    "digital_twins",
    "enterprise_engineering",
    "hybrid_quantum_systems",
    "innovation",
    "intelligent_systems",
    "mission_systems",
    "quantum_computing",
    "robotics",
    "space_systems",
    "tacit_knowledge"
)

foreach ($folder in $folders) {

    $path = Join-Path $base $folder

    New-Item -ItemType Directory -Path $path -Force | Out-Null
    New-Item -ItemType File -Path (Join-Path $path "README.md") -Force | Out-Null

    Write-Host "Created: $folder"
}

Write-Host ""
Write-Host "==============================================="
Write-Host " FAEP Case Studies structure created successfully"
Write-Host "==============================================="