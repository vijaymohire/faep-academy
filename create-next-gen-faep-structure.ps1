# ============================================================
# create-next-gen-faep-structure.ps1
#
# Creates the next-generation engineering folders
# for the FAEP Education Repository.
#
# Author : Vijay Mohire
# ============================================================

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "==============================================="
Write-Host "Creating Next Generation FAEP Structure..."
Write-Host "==============================================="
Write-Host ""

function New-Folder {
    param([string]$Path)

    if (!(Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
        Write-Host "[+] $Path"
    }
}

function New-Readme {
    param([string]$Folder)

    $file = Join-Path $Folder "README.md"

    if (!(Test-Path $file)) {

        $title = Split-Path $Folder -Leaf

        @"
# $title

## Purpose

(Add description)

---

## Contents

-

-

-

---

## Related FAEP Components

-

-

-

---

## Notes

(Add notes)
"@ | Set-Content $file -Encoding UTF8
    }
}

# ============================================================
# Engineering Patterns
# ============================================================

$engineeringPatterns = @(
"engineering_patterns",
"engineering_patterns\decision_patterns",
"engineering_patterns\deployment_patterns",
"engineering_patterns\agent_patterns",
"engineering_patterns\digital_twin_patterns",
"engineering_patterns\knowledge_patterns",
"engineering_patterns\tensor_patterns",
"engineering_patterns\mission_patterns",
"engineering_patterns\governance_patterns"
)

# ============================================================
# Standards
# ============================================================

$standards = @(
"standards",
"standards\ISO",
"standards\IEEE",
"standards\NIST",
"standards\INCOSE",
"standards\OMG",
"standards\W3C",
"standards\OpenTelemetry",
"standards\OpenUSD",
"standards\ROS",
"standards\LinuxFoundation"
)

# ============================================================
# Platforms
# ============================================================

$platforms = @(
"platforms",
"platforms\Azure",
"platforms\AWS",
"platforms\GoogleCloud",
"platforms\NVIDIA",
"platforms\AMD",
"platforms\Intel",
"platforms\ROS2",
"platforms\Kubernetes",
"platforms\Docker",
"platforms\Linux",
"platforms\Windows",
"platforms\Photonics",
"platforms\Quantum"
)

# ============================================================
# Algorithms Library
# ============================================================

$algorithms = @(
"qai\algorithms\optimization",
"qai\algorithms\planning",
"qai\algorithms\reasoning",
"qai\algorithms\search",
"qai\algorithms\graph",
"qai\algorithms\tensor",
"qai\algorithms\semantic",
"qai\algorithms\agent",
"qai\algorithms\quantum",
"qai\algorithms\robotics"
)

# ============================================================
# Data Structures
# ============================================================

$dataStructures = @(
"qai\data_structures\graphs",
"qai\data_structures\tensors",
"qai\data_structures\knowledge_graphs",
"qai\data_structures\semantic",
"qai\data_structures\world_models",
"qai\data_structures\digital_twins",
"qai\data_structures\quantum",
"qai\data_structures\robotics"
)

# ============================================================
# Runtime Library
# ============================================================

$runtimes = @(
"qai\runtimes\ai_runtime",
"qai\runtimes\quantum_runtime",
"qai\runtimes\robotics_runtime",
"qai\runtimes\simulation_runtime",
"qai\runtimes\planning_runtime",
"qai\runtimes\inference_runtime",
"qai\runtimes\mission_runtime",
"qai\runtimes\cloud_runtime",
"qai\runtimes\edge_runtime"
)

# ============================================================
# Combine Everything
# ============================================================

$allFolders = @()

$allFolders += $engineeringPatterns
$allFolders += $standards
$allFolders += $platforms
$allFolders += $algorithms
$allFolders += $dataStructures
$allFolders += $runtimes

foreach ($folder in $allFolders)
{
    New-Folder $folder
    New-Readme $folder
}

Write-Host ""
Write-Host "==============================================="
Write-Host "Structure creation complete."
Write-Host "==============================================="