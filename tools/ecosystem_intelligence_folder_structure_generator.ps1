# ==========================================================
# FAEP Academy - Ecosystem Intelligence Engineering
# Folder Structure Generator
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education\tutorials\ecosystem_intelligence"

# Root folder
New-Item -ItemType Directory -Force -Path $root | Out-Null

# Root README
New-Item -ItemType File -Force -Path "$root\README.md" | Out-Null

# ----------------------------------------------------------
# Top Level Folders
# ----------------------------------------------------------

$folders = @(
"intelligence_foundations",
"information_engineering",
"knowledge_engineering",
"ecosystem_memory",
"master_intelligence",
"dynamic_intelligence",
"mission_intelligence",
"collaborative_intelligence",
"federated_intelligence",
"intelligence_catalog",
"intelligence_validation",
"truth_management",
"intelligence_governance",
"ecosystem_orchestration",
"qai_ecosystem_intelligence",
"cognitive_ecosystems",
"autonomous_ecosystems",
"standards_and_governance",
"future_ecosystem_intelligence"
)

foreach($folder in $folders)
{
    $path = Join-Path $root $folder
    New-Item -ItemType Directory -Force -Path $path | Out-Null
    New-Item -ItemType File -Force -Path "$path\README.md" | Out-Null
}

# ----------------------------------------------------------
# Ecosystem Learning
# ----------------------------------------------------------

$learning = @(
"continuous_learning",
"adaptive_learning",
"experience_capture",
"lessons_learned",
"root_cause_learning",
"intelligence_maturity",
"ecosystem_evolution",
"continuous_improvement"
)

$learningRoot = Join-Path $root "ecosystem_learning"
New-Item -ItemType Directory -Force -Path $learningRoot | Out-Null
New-Item -ItemType File -Force -Path "$learningRoot\README.md" | Out-Null

foreach($folder in $learning)
{
    $path = Join-Path $learningRoot $folder
    New-Item -ItemType Directory -Force -Path $path | Out-Null
    New-Item -ItemType File -Force -Path "$path\README.md" | Out-Null
}

# ----------------------------------------------------------
# Ecosystem Reservoirs
# ----------------------------------------------------------

$reservoirs = @(
"information_reservoir",
"knowledge_reservoir",
"intelligence_reservoir",
"capability_reservoir",
"workflow_reservoir",
"digital_asset_reservoir",
"ai_reservoir",
"qai_reservoir",
"community_reservoir",
"mission_reservoir"
)

$resRoot = Join-Path $root "ecosystem_reservoirs"
New-Item -ItemType Directory -Force -Path $resRoot | Out-Null
New-Item -ItemType File -Force -Path "$resRoot\README.md" | Out-Null

foreach($folder in $reservoirs)
{
    $path = Join-Path $resRoot $folder
    New-Item -ItemType Directory -Force -Path $path | Out-Null
    New-Item -ItemType File -Force -Path "$path\README.md" | Out-Null
}

# ----------------------------------------------------------
# Intelligence Continuity
# ----------------------------------------------------------

$continuity = @(
"intelligence_transfer",
"intelligence_portability",
"intelligence_preservation",
"ecosystem_modernization",
"business_continuity",
"disaster_recovery",
"operational_recovery",
"resilience_engineering"
)

$contRoot = Join-Path $root "intelligence_continuity"
New-Item -ItemType Directory -Force -Path $contRoot | Out-Null
New-Item -ItemType File -Force -Path "$contRoot\README.md" | Out-Null

foreach($folder in $continuity)
{
    $path = Join-Path $contRoot $folder
    New-Item -ItemType Directory -Force -Path $path | Out-Null
    New-Item -ItemType File -Force -Path "$path\README.md" | Out-Null
}

Write-Host ""
Write-Host "========================================="
Write-Host " Ecosystem Intelligence Engineering"
Write-Host " Folder Structure Created Successfully"
Write-Host "========================================="