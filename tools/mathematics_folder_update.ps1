# ============================================================
# FAEP Academy - Mathematics Folder Update
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\mathematics"

$Folders = @(

    ""

    # --------------------------------------------------------
    # Classical Mathematics
    # --------------------------------------------------------

    "classical_mathematics"

    "classical_mathematics\calculus"
    "classical_mathematics\linear_algebra"
    "classical_mathematics\probability"
    "classical_mathematics\statistics"
    "classical_mathematics\graph_theory"
    "classical_mathematics\optimization"
    "classical_mathematics\information_theory"
    "classical_mathematics\tensor_mathematics"
    "classical_mathematics\numerical_methods"

    # --------------------------------------------------------
    # Computational Mathematics
    # --------------------------------------------------------

    "computational_mathematics"

    "computational_mathematics\numerical_methods"
    "computational_mathematics\optimization"
    "computational_mathematics\linear_algebra"
    "computational_mathematics\graph_theory"
    "computational_mathematics\discrete_mathematics"
    "computational_mathematics\information_theory"
    "computational_mathematics\control_theory"
    "computational_mathematics\signal_processing"
    "computational_mathematics\machine_learning_mathematics"

    # --------------------------------------------------------
    # QAI Mathematics
    # --------------------------------------------------------

    "qai_mathematics"

    "qai_mathematics\complex_numbers"
    "qai_mathematics\hilbert_spaces"
    "qai_mathematics\tensor_algebra"
    "qai_mathematics\linear_operators"
    "qai_mathematics\unitary_transformations"
    "qai_mathematics\lie_groups"
    "qai_mathematics\topology"
    "qai_mathematics\category_theory"
    "qai_mathematics\information_geometry"
    "qai_mathematics\quantum_probability"
    "qai_mathematics\quantum_information_theory"
    "qai_mathematics\quantum_error_correction_mathematics"
    "qai_mathematics\mathematical_models"
    "qai_mathematics\engineering_models"
    "qai_mathematics\computational_models"
    "qai_mathematics\future_mathematics"

    # --------------------------------------------------------
    # Engineering
    # --------------------------------------------------------

    "engineering_axioms"

)

# ------------------------------------------------------------
# Create folders + README
# ------------------------------------------------------------

if (!(Test-Path $Root))
{
    New-Item -ItemType Directory -Path $Root | Out-Null
}

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
        if ($Folder -eq "")
        {
            $Title = "Mathematics"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section is part of the FAEP Academy Mathematics curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Mathematics structure updated successfully"
Write-Host "==============================================="
Write-Host ""