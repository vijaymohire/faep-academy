# ============================================================
# FAEP Academy - Quantum Information Science Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\quantum_information_science"

$Folders = @(

    ""

    "quantum_physics"
    "quantum_physics\bosons"
    "quantum_physics\fermions"
    "quantum_physics\anyons"
    "quantum_physics\quasiparticles"
    "quantum_physics\quantum_fields"
    "quantum_physics\quantum_statistics"

    "quantum_information"

    "quantum_computing"

    "quantum_communication"

    "quantum_networks"

    "quantum_memory"

    "quantum_transduction"

    "photonic_systems"

    "spintronics"

    "topological_quantum"

    "bose_einstein_condensates"

    "hybrid_quantum_systems"

    "fault_tolerant_quantum_computing"

    "quantum_error_correction"

    "quantum_processors"

    "quantum_datacenters"

    "future_research"
)

# ------------------------------------------------------------
# Create Root
# ------------------------------------------------------------

if (!(Test-Path $Root))
{
    New-Item -ItemType Directory -Path $Root | Out-Null
}

# ------------------------------------------------------------
# Create Folders + README.md
# ------------------------------------------------------------

foreach ($Folder in $Folders)
{
    $Path = Join-Path $Root $Folder

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }

    $Readme = Join-Path $Path "README.md"

    if (!(Test-Path $Readme))
    {
        $Title = if ($Folder -eq "")
        {
            "Quantum Information Science"
        }
        else
        {
            ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "Quantum Information Science folder structure created successfully."
Write-Host ""