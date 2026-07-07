# ==============================================================================
# create-mit-knowledge-structure.ps1
#
# Adds MIT Knowledge Integration structure to FAEP Education Repository
#
# Bhadale IT
# ==============================================================================

Write-Host ""
Write-Host "====================================================="
Write-Host " Creating MIT Knowledge Integration Structure"
Write-Host "====================================================="
Write-Host ""

# ------------------------------------------------------------------------------
# Helper Functions
# ------------------------------------------------------------------------------

function New-Folder {
    param([string]$Path)

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path | Out-Null
        Write-Host "Created Folder : $Path"
    }
}

function New-MDFile {
    param([string]$File)

    if (!(Test-Path $File))
    {
        New-Item -ItemType File -Path $File | Out-Null
        Set-Content $File "# $(Split-Path $File -LeafBase)"
        Write-Host "Created File   : $File"
    }
}

# ==============================================================================
# REFERENCES
# ==============================================================================

$ReferenceFolders = @(
"references\mit_ocw",
"references\mit_ocw\systems_engineering",
"references\mit_ocw\machine_learning",
"references\mit_ocw\robotics",
"references\mit_ocw\mathematics",
"references\mit_ocw\optimization",
"references\mit_ocw\learning_theory",
"references\mit_ocw\complexity",
"references\mit_ocw\quantum",
"references\mit_ocw\photonics"
)

foreach ($f in $ReferenceFolders)
{
    New-Folder $f
}

# MIT Course Notes

$MITFiles = @(
"Matrix_Methods.md",
"Matrix_Calculus.md",
"Learning_From_Data.md",
"Statistical_Learning.md",
"Advanced_NLP.md",
"Algorithms_For_Inference.md",
"MultiAgent_Learning.md",
"Human_Supervisory_Control.md",
"Underactuated_Robotics.md",
"Robotic_Manipulation.md",
"Modeling_And_Simulation.md",
"Sensor_Technologies.md",
"Nonlinear_Optimization.md",
"Complexity_Theory.md",
"Lie_Groups.md",
"Tensor_Categories.md",
"Quantum_Communication.md",
"Quantum_Field_Theory.md",
"Many_Body_Physics.md",
"Photonics.md"
)

foreach ($m in $MITFiles)
{
    New-MDFile "references\mit_ocw\$m"
}

# ==============================================================================
# RESEARCH INTELLIGENCE
# ==============================================================================

$ResearchFolders = @(
"research_intelligence\knowledge_mining",
"research_intelligence\technology_derivation",
"research_intelligence\data_structure_candidates",
"research_intelligence\algorithm_candidates",
"research_intelligence\model_candidates",
"research_intelligence\theorem_candidates",
"research_intelligence\patent_candidates",
"research_intelligence\validation",
"research_intelligence\maturity_models"
)

foreach ($f in $ResearchFolders)
{
    New-Folder $f
}

# ==============================================================================
# KNOWLEDGE GRAPHS
# ==============================================================================

$KGFolders = @(
"knowledge_graphs\mit_topics",
"knowledge_graphs\qai_topics",
"knowledge_graphs\concept_graphs",
"knowledge_graphs\theory_mapping",
"knowledge_graphs\dependency_graphs",
"knowledge_graphs\ontology"
)

foreach ($f in $KGFolders)
{
    New-Folder $f
}

# ==============================================================================
# QAI
# ==============================================================================

$QAIFolders = @(
"qai\foundations",
"qai\algorithms",
"qai\data_structures",
"qai\models",
"qai\runtimes",
"qai\fabrics",
"qai\deployment",
"qai\world_models",
"qai\digital_twins"
)

foreach ($f in $QAIFolders)
{
    New-Folder $f
}

# ==============================================================================
# QAI ENGINEERING
# ==============================================================================

$EngineeringFolders = @(
"qai_engineering\autonomous",
"qai_engineering\robotics",
"qai_engineering\cyber_physical",
"qai_engineering\cloud",
"qai_engineering\edge",
"qai_engineering\deployment",
"qai_engineering\enterprise"
)

foreach ($f in $EngineeringFolders)
{
    New-Folder $f
}

# ==============================================================================
# SYSTEMS ENGINEERING
# ==============================================================================

$SEFolders = @(
"systems_engineering\incose",
"systems_engineering\uaf",
"systems_engineering\mission_engineering",
"systems_engineering\axiomatic_design",
"systems_engineering\decision_based_design",
"systems_engineering\lean",
"systems_engineering\set_based_design",
"systems_engineering\supervisory_control"
)

foreach ($f in $SEFolders)
{
    New-Folder $f
}

# ==============================================================================
# SOFTWARE ENGINEERING
# ==============================================================================

$SWFolders = @(
"software_engineering\runtimes",
"software_engineering\containers",
"software_engineering\middleware",
"software_engineering\deployment_patterns",
"software_engineering\virtual_machines",
"software_engineering\kubernetes"
)

foreach ($f in $SWFolders)
{
    New-Folder $f
}

# ==============================================================================
# LABS
# ==============================================================================

$LabFolders = @(
"labs\robotics",
"labs\optimization",
"labs\machine_learning",
"labs\autonomous_agents",
"labs\world_models"
)

foreach ($f in $LabFolders)
{
    New-Folder $f
}

# ==============================================================================
# NOTEBOOKS
# ==============================================================================

$NotebookFolders = @(
"notebooks\matrix_methods",
"notebooks\optimization",
"notebooks\learning",
"notebooks\robotics",
"notebooks\quantum",
"notebooks\tensors"
)

foreach ($f in $NotebookFolders)
{
    New-Folder $f
}

# ==============================================================================
# TUTORIALS
# ==============================================================================

$TutorialFolders = @(
"tutorials\mit",
"tutorials\mit\matrix_methods",
"tutorials\mit\optimization",
"tutorials\mit\robotics",
"tutorials\mit\learning",
"tutorials\qai",
"tutorials\qai\world_models",
"tutorials\qai\tensors",
"tutorials\qai\faep"
)

foreach ($f in $TutorialFolders)
{
    New-Folder $f
}

# ==============================================================================
# STUDENT TRACKS
# ==============================================================================

$StudentFolders = @(
"student_learning_tracks\foundations",
"student_learning_tracks\intermediate",
"student_learning_tracks\advanced",
"student_learning_tracks\research",
"student_learning_tracks\mit_path",
"student_learning_tracks\qai_path"
)

foreach ($f in $StudentFolders)
{
    New-Folder $f
}

# ==============================================================================
# TECHNOLOGY PORTFOLIO
# ==============================================================================

$PortfolioFolders = @(
"technology_portfolio",
"technology_portfolio\horizons",
"technology_portfolio\products",
"technology_portfolio\research",
"technology_portfolio\commercialization",
"technology_portfolio\investment",
"technology_portfolio\roadmap",
"technology_portfolio\scoring"
)

foreach ($f in $PortfolioFolders)
{
    New-Folder $f
}

# ==============================================================================
# COMPLETE
# ==============================================================================

Write-Host ""
Write-Host "====================================================="
Write-Host " MIT Knowledge Structure Created Successfully"
Write-Host "====================================================="
Write-Host ""