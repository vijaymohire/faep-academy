# ==========================================================
# FAEP Education - Tutorials Folder Structure Generator
# Creates missing folders and README.md files
# Existing README.md files are preserved
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education\tutorials"

$folders = @(

    # Root
    "."

    # ------------------------------------------------------
    # Foundations
    # ------------------------------------------------------
    "foundations"
    "foundations\mathematics"
    "foundations\linear_algebra"
    "foundations\probability"
    "foundations\optimization"
    "foundations\quantum_computing"
    "foundations\artificial_intelligence"
    "foundations\machine_learning"
    "foundations\systems_engineering"

    # ------------------------------------------------------
    # MIT Tutorials (Existing + New)
    # ------------------------------------------------------
    "mit"
    "mit\learning"
    "mit\matrix_methods"
    "mit\optimization"
    "mit\robotics"
    "mit\quantum_information"

    # ------------------------------------------------------
    # QAI Tutorials
    # ------------------------------------------------------
    "qai"
    "qai\faep"
    "qai\qai_architecture"
    "qai\qai_engineering"
    "qai\qai_cloud"
    "qai\qai_hub"
    "qai\enterprise_intelligence"
    "qai\digital_twins"
    "qai\knowledge_graphs"
    "qai\hybrid_runtime"
    "qai\runtime_services"
    "qai\tensors"
    "qai\world_models"

    # ------------------------------------------------------
    # Architecture Tutorials
    # ------------------------------------------------------
    "architecture"
    "architecture\enterprise_architecture"
    "architecture\reference_models"
    "architecture\reference_architectures"
    "architecture\service_mesh"
    "architecture\scheduling"
    "architecture\security"
    "architecture\validation"
    "architecture\scalability"
    "architecture\workload_placement"

    # ------------------------------------------------------
    # Cloud Tutorials
    # ------------------------------------------------------
    "cloud"
    "cloud\azure"
    "cloud\aws"
    "cloud\gcp"
    "cloud\hybrid_cloud"
    "cloud\multicloud"

    # ------------------------------------------------------
    # Intelligent Systems
    # ------------------------------------------------------
    "intelligent_systems"
    "intelligent_systems\autonomous_agents"
    "intelligent_systems\robotics"
    "intelligent_systems\drones"
    "intelligent_systems\cyber_physical_systems"
    "intelligent_systems\space_systems"
    "intelligent_systems\mission_systems"

    # ------------------------------------------------------
    # Development Tutorials
    # ------------------------------------------------------
    "development"
    "development\python"
    "development\csharp"
    "development\cpp"
    "development\rust"
    "development\qiskit"
    "development\cudaq"
    "development\docker"
    "development\kubernetes"
    "development\github"

    # ------------------------------------------------------
    # Enterprise Tutorials
    # ------------------------------------------------------
    "enterprise"
    "enterprise\modernization"
    "enterprise\transformation"
    "enterprise\governance"
    "enterprise\architecture_reviews"
    "enterprise\best_practices"
    "enterprise\adoption"

    # ------------------------------------------------------
    # Research Tutorials
    # ------------------------------------------------------
    "research"
    "research\algorithms"
    "research\papers"
    "research\benchmarks"
    "research\simulations"
    "research\publications"

    # ------------------------------------------------------
    # Projects
    # ------------------------------------------------------
    "projects"
    "projects\beginner"
    "projects\intermediate"
    "projects\advanced"
    "projects\capstone"
)

foreach ($folder in $folders)
{
    $path = Join-Path $root $folder

    if (!(Test-Path $path))
    {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created Folder : $folder"
    }

    $readme = Join-Path $path "README.md"

    if (!(Test-Path $readme))
    {
        $title = if ($folder -eq ".") { "Tutorials" } else { Split-Path $path -Leaf }

@"
# $title

> FAEP Education

> TODO

"@ | Set-Content $readme -Encoding UTF8

        Write-Host "Created README : $folder"
    }
}

Write-Host ""
Write-Host "==========================================="
Write-Host "Tutorials folder structure completed."
Write-Host "==========================================="