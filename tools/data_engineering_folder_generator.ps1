# ============================================================
# FAEP Academy - Data Engineering Folder Generator
# Bhadale IT
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education\tutorials\data_engineering"

$Folders = @(

    ""

    "data_foundations"

    "information_engineering"

    "data_modeling"

    "data_structures"

    "databases"

    "data_warehousing"

    "data_lakes"

    "lakehouse"

    "metadata_management"

    "master_data_management"

    "data_governance"

    "data_quality"

    "data_security"

    "data_privacy"

    "etl_elt"

    "data_pipelines"

    "streaming_data"

    "event_driven_data"

    "time_series_data"

    "graph_data"

    "vector_databases"

    "knowledge_graphs"

    "digital_twin_data"

    "hybrid_storage"

    "distributed_storage"

    "data_virtualization"

    "cloud_data_platforms"

    "data_observability"

    "data_validation"

    "data_lifecycle"

    "qai_information_engineering"

    "qai_data_models"

    "qai_information_layer"

    "qai_memory_foundations"

    "qai_storage_abstraction"

    "hybrid_classical_quantum_storage"

    "information_fabric"

    "semantic_information_models"

    "engineering_standards"

    "future_data_engineering"
)

# ------------------------------------------------------------
# Create Root Folder
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
        if ($Folder -eq "")
        {
            $Title = "Data Engineering"
        }
        else
        {
            $Title = ($Folder.Split("\")[-1] -replace "_"," ")
        }

@"
# $Title

> TODO: Add tutorial content.

## Overview

This section will be developed as part of the FAEP Academy curriculum.

"@ | Set-Content $Readme -Encoding UTF8
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Data Engineering structure created successfully"
Write-Host "==============================================="
Write-Host ""