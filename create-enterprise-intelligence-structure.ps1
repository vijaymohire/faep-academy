$root="E:\Bhadale IT\github\faep-education"

#====================================================
# AI
#====================================================

New-Item "$root\ai" -ItemType Directory -Force
New-Item "$root\ai\README.md" -ItemType File -Force

#====================================================
# Enterprise Intelligence
#====================================================

New-Item "$root\enterprise_intelligence" -ItemType Directory -Force

New-Item "$root\enterprise_intelligence\README.md" -ItemType File -Force

$folders=@(

"agentic_ai",

"automation",

"augmentation",

"decision_intelligence",

"enterprise_copilots",

"enterprise_memory",

"enterprise_reasoning",

"multi_agent_systems",

"world_models"

)

foreach($f in $folders)
{
    New-Item "$root\enterprise_intelligence\$f" -ItemType Directory -Force
    New-Item "$root\enterprise_intelligence\$f\README.md" -ItemType File -Force
}

#====================================================
# Repository Guides (optional)
#====================================================

New-Item "$root\repository_guides" -ItemType Directory -Force

$docs=@(

"README.md",

"repository_overview.md",

"repository_governance.md",

"repository_structure.md",

"document_standards.md",

"metadata_standards.md",

"naming_conventions.md",

"contributing.md",

"versioning.md"

)

foreach($d in $docs)
{
    New-Item "$root\repository_guides\$d" -ItemType File -Force
}

Write-Host ""
Write-Host "======================================="
Write-Host " Repository v1.0 folders created"
Write-Host "======================================="