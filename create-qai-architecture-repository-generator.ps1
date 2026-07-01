# =====================================================
# FAEP Education
# QAI Architecture Repository Generator
# =====================================================

$root = "E:\Bhadale IT\github\faep-education"

#-------------------------------------------------------
# Create Top-Level Repository
#-------------------------------------------------------

New-Item "$root\qai_architecture" -ItemType Directory -Force
New-Item "$root\qai_architecture\README.md" -ItemType File -Force

#-------------------------------------------------------
# Repository Structure
#-------------------------------------------------------

$folders = @(
"architectural_patterns",
"architecture_decision_records",
"compute_models",
"control_planes",
"deployment_models",
"design_principles",
"enterprise_integration",
"hardware_abstraction",
"hybrid_runtime",
"interoperability",
"observability",
"orchestration",
"quantum_networking",
"reference_architectures",
"reference_models",
"resource_management",
"runtime_services",
"scalability",
"scheduling",
"security",
"service_mesh",
"validation",
"workload_placement"
)

foreach ($folder in $folders)
{
    New-Item `
        "$root\qai_architecture\$folder" `
        -ItemType Directory `
        -Force

    New-Item `
        "$root\qai_architecture\$folder\README.md" `
        -ItemType File `
        -Force
}

Write-Host ""
Write-Host "=========================================="
Write-Host " QAI Architecture Repository Created"
Write-Host "=========================================="
Write-Host ""

Get-ChildItem "$root\qai_architecture" -Directory |
Sort-Object Name |
Select-Object Name