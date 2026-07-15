# ==========================================================
# FAEP Education - Phase 2
# Create Markdown Skeleton Files
# ==========================================================

$root = "E:\Bhadale IT\github\faep-education"

# ----------------------------------------------------------
# Helper Function
# ----------------------------------------------------------
function New-MarkdownFile {
    param($FilePath)

    if (!(Test-Path $FilePath))
    {
        $title = [System.IO.Path]::GetFileNameWithoutExtension($FilePath)
        $title = $title.Replace("_"," ")

        "# $title" | Set-Content $FilePath
        Add-Content $FilePath ""
        Add-Content $FilePath "> Work in Progress"
    }
}

# ==========================================================
# Tutorials
# ==========================================================

$tutorialFolder = Join-Path $root "tutorials\tacit_knowledge"

$tutorials = @(
"README.md",
"01_introduction.md",
"02_explicit_vs_tacit.md",
"03_engineering_memory.md",
"04_human_feedback.md",
"05_rlhf.md",
"06_apprentice_learning.md",
"07_ticket_management.md",
"08_multicultural_learning.md",
"09_contextual_reasoning.md",
"10_tacit_fabric.md",
"11_engineering_judgement.md",
"12_qagi_and_tacit.md"
)

foreach($file in $tutorials)
{
    New-MarkdownFile (Join-Path $tutorialFolder $file)
}

# ==========================================================
# Labs
# ==========================================================

$labFolder = Join-Path $root "labs\tacit_knowledge_lab"

$labs = @(
"README.md",
"lab01_experience_capture.md",
"lab02_ticket_learning.md",
"lab03_postmortem_analysis.md",
"lab04_patent_reasoning.md",
"lab05_human_feedback.md",
"lab06_context_embedding.md",
"lab07_engineering_memory.md",
"lab08_decision_graphs.md",
"lab09_tacit_fabric.md",
"lab10_qagi_experiment.md"
)

foreach($file in $labs)
{
    New-MarkdownFile (Join-Path $labFolder $file)
}

# ==========================================================
# Notebooks
# ==========================================================

$nbFolder = Join-Path $root "notebooks\tacit_knowledge"

$notebooks = @(
"README.md",
"tacit_vs_explicit.md",
"context_embeddings.md",
"engineering_memory.md",
"decision_patterns.md",
"organizational_memory.md",
"qagi_experience_learning.md"
)

foreach($file in $notebooks)
{
    New-MarkdownFile (Join-Path $nbFolder $file)
}

# ==========================================================
# Academy Course
# ==========================================================

$academyFolder = Join-Path $root "academy\courses\tacit_knowledge"

$academy = @(
"README.md",
"syllabus.md",
"learning_objectives.md",
"roadmap.md"
)

foreach($file in $academy)
{
    New-MarkdownFile (Join-Path $academyFolder $file)
}

# ==========================================================
# Framework
# ==========================================================

$frameworkFolder = Join-Path $root "frameworks\tacit_intelligence_framework"

$framework = @(
"README.md",
"architecture.md",
"maturity_model.md",
"engineering_memory.md",
"implementation.md"
)

foreach($file in $framework)
{
    New-MarkdownFile (Join-Path $frameworkFolder $file)
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Phase 2 Completed Successfully"
Write-Host " Markdown skeletons created."
Write-Host "==============================================="