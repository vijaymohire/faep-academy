# ============================================================
# create-technology-structure.ps1
#
# Creates the Technology Knowledge Repository
# for FAEP Education
#
# Author : Vijay Mohire
# ============================================================

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "========================================="
Write-Host "Creating Technology Repository..."
Write-Host "========================================="
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

(Add description.)

---

## Technologies

-

-

-

---

## FAEP Mapping

-

-

-

---

## Related Whitepaper Chapters

-

-

-

---

## Notes

(Add notes here.)

"@ | Set-Content $file -Encoding UTF8

    }
}

# ============================================================
# Technology Repository
# ============================================================

$folders = @(

"technology"

# ------------------------------------------------
# Cloud Platforms
# ------------------------------------------------

"technology\cloud",
"technology\cloud\Azure",
"technology\cloud\AWS",
"technology\cloud\GoogleCloud",

# ------------------------------------------------
# Hardware
# ------------------------------------------------

"technology\hardware",
"technology\hardware\NVIDIA",
"technology\hardware\AMD",
"technology\hardware\Intel",

# ------------------------------------------------
# Operating Systems
# ------------------------------------------------

"technology\operating_systems",
"technology\operating_systems\Linux",
"technology\operating_systems\Windows",

# ------------------------------------------------
# Container & Orchestration
# ------------------------------------------------

"technology\orchestration",
"technology\orchestration\Docker",
"technology\orchestration\Kubernetes",

# ------------------------------------------------
# Robotics
# ------------------------------------------------

"technology\robotics",
"technology\robotics\ROS2",

# ------------------------------------------------
# Networking
# ------------------------------------------------

"technology\networking",
"technology\networking\Ethernet",
"technology\networking\Software_Defined_Networking",
"technology\networking\5G",
"technology\networking\6G",

# ------------------------------------------------
# Quantum Technologies
# ------------------------------------------------

"technology\quantum",
"technology\quantum\Photonics",
"technology\quantum\Quantum_Computing",
"technology\quantum\Quantum_Communication",
"technology\quantum\Quantum_Sensing",
"technology\quantum\Quantum_Networks"

)

foreach ($folder in $folders)
{
    New-Folder $folder
    New-Readme $folder
}

Write-Host ""
Write-Host "========================================="
Write-Host "Technology Repository Created"
Write-Host "========================================="