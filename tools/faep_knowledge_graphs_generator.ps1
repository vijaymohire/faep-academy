# ==========================================
# FAEP Knowledge Graphs Structure Generator
# ==========================================

$root = "knowledge_graphs"

# Create root folder
New-Item -ItemType Directory -Force -Path $root | Out-Null

# Root README
New-Item -ItemType File -Force -Path "$root\README.md" | Out-Null

# -------------------------------------------------
# concept_graphs
# -------------------------------------------------

$folder = "$root\concept_graphs"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"enterprise_concepts.md",
"qai_concepts.md",
"modernization_concepts.md",
"governance_concepts.md",
"engineering_concepts.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# dependency_graphs
# -------------------------------------------------

$folder = "$root\dependency_graphs"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"framework_dependencies.md",
"technology_dependencies.md",
"product_dependencies.md",
"enterprise_dependencies.md",
"modernization_dependencies.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# mit_topics
# -------------------------------------------------

$folder = "$root\mit_topics"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"quantum_computing.md",
"quantum_information.md",
"machine_learning.md",
"optimization.md",
"references.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# ontology
# -------------------------------------------------

$folder = "$root\ontology"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"enterprise_ontology.md",
"technology_ontology.md",
"product_ontology.md",
"research_ontology.md",
"modernization_ontology.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# qai_topics
# -------------------------------------------------

$folder = "$root\qai_topics"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"qai_foundations.md",
"hybrid_computing.md",
"qagi.md",
"qasi.md",
"ftqc.md",
"applications.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# theory_mapping
# -------------------------------------------------

$folder = "$root\theory_mapping"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"classical_to_ai.md",
"ai_to_qai.md",
"theory_to_engineering.md",
"engineering_to_products.md",
"products_to_modernization.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

# -------------------------------------------------
# enterprise_models
# -------------------------------------------------

$folder = "$root\enterprise_models"
New-Item -ItemType Directory -Force -Path $folder | Out-Null

@(
"faep.md",
"epcrm.md",
"heea.md",
"faef.md",
"qaitf.md",
"capability_planes.md",
"business_verticals.md",
"governance.md",
"modernization.md"
) | ForEach-Object {
    New-Item -ItemType File -Force -Path "$folder\$_" | Out-Null
}

Write-Host ""
Write-Host "========================================"
Write-Host " FAEP Knowledge Graph Structure Created "
Write-Host "========================================"