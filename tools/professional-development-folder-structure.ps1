# ============================================================
# FAEP Education
# Professional Development Folder Structure
# Creates folders and README.md files
# Safe to run multiple times
# ============================================================

$root = "E:\Bhadale IT\github\faep-education\professional_development"

#------------------------------------------------------------
# Folder Structure
#------------------------------------------------------------

$folders = @(
"",
"career_pathways",
"career_pathways\students",
"career_pathways\graduates",
"career_pathways\early_career",
"career_pathways\experienced_engineers",
"career_pathways\architects",
"career_pathways\researchers",
"career_pathways\technical_leaders",
"career_pathways\consultants",
"career_pathways\entrepreneurs",
"career_pathways\executives",

"competency_frameworks",
"competency_frameworks\engineering_competencies",
"competency_frameworks\systems_engineering",
"competency_frameworks\software_engineering",
"competency_frameworks\ai_engineering",
"competency_frameworks\quantum_engineering",
"competency_frameworks\enterprise_architecture",
"competency_frameworks\technical_leadership",
"competency_frameworks\ethics",
"competency_frameworks\communication",
"competency_frameworks\lifelong_learning",

"continuing_professional_development",
"continuing_professional_development\cpd_planning",
"continuing_professional_development\learning_journals",
"continuing_professional_development\technical_training",
"continuing_professional_development\conference_participation",
"continuing_professional_development\publications",
"continuing_professional_development\mentoring",
"continuing_professional_development\volunteering",
"continuing_professional_development\annual_reviews",

"portfolio_development",
"portfolio_development\github_portfolio",
"portfolio_development\technical_writing",
"portfolio_development\whitepapers",
"portfolio_development\architecture_portfolio",
"portfolio_development\research_portfolio",
"portfolio_development\patents",
"portfolio_development\presentations",
"portfolio_development\project_evidence",

"interview_preparation",
"interview_preparation\chartered_interviews",
"interview_preparation\competency_interviews",
"interview_preparation\technical_presentations",
"interview_preparation\behavioural_questions",
"interview_preparation\peer_reviews",

"professional_memberships",
"professional_memberships\ieee",
"professional_memberships\incose",
"professional_memberships\acm",
"professional_memberships\iet",
"professional_memberships\pmi",
"professional_memberships\isaca",
"professional_memberships\isc2",
"professional_memberships\cips",
"professional_memberships\acs",
"professional_memberships\engineers_australia",

"chartered_and_licensing",
"chartered_and_licensing\australia",
"chartered_and_licensing\australia\engineers_australia",
"chartered_and_licensing\australia\acs",

"chartered_and_licensing\canada",
"chartered_and_licensing\canada\engineers_canada",
"chartered_and_licensing\canada\professional_engineer",
"chartered_and_licensing\canada\engineers_bc",
"chartered_and_licensing\canada\apega",
"chartered_and_licensing\canada\peo",
"chartered_and_licensing\canada\oiq",
"chartered_and_licensing\canada\cips",

"chartered_and_licensing\united_states",
"chartered_and_licensing\united_states\ncees",
"chartered_and_licensing\united_states\texas",
"chartered_and_licensing\united_states\california",
"chartered_and_licensing\united_states\washington",
"chartered_and_licensing\united_states\other_states",

"chartered_and_licensing\united_kingdom",
"chartered_and_licensing\united_kingdom\engineering_council",
"chartered_and_licensing\united_kingdom\iet",
"chartered_and_licensing\united_kingdom\imeche",
"chartered_and_licensing\united_kingdom\ice",

"chartered_and_licensing\international",
"chartered_and_licensing\international\washington_accord",
"chartered_and_licensing\international\sydney_accord",
"chartered_and_licensing\international\dublin_accord",
"chartered_and_licensing\international\mutual_recognition",
"chartered_and_licensing\international\mobility",

"fellowships",
"fellowships\ieee_fellow",
"fellowships\engineers_australia_fellow",
"fellowships\acs_fellow",
"fellowships\cips_fellow",
"fellowships\incose_fellow",
"fellowships\professional_recognition",

"mentoring",
"mentoring\mentors",
"mentoring\mentees",
"mentoring\coaching",
"mentoring\peer_learning",
"mentoring\study_groups",

"global_frameworks",
"global_frameworks\washington_accord",
"global_frameworks\engineering_competency_models",
"global_frameworks\engineering_ethics",
"global_frameworks\sustainability",
"global_frameworks\industry_5",
"global_frameworks\society_5",
"global_frameworks\future_engineering",

"templates"
)

#------------------------------------------------------------
# Create folders and README.md
#------------------------------------------------------------

foreach($folder in $folders)
{
    $folderPath = Join-Path $root $folder

    if(!(Test-Path $folderPath))
    {
        New-Item -ItemType Directory -Path $folderPath | Out-Null
        Write-Host "Created Folder : $folder"
    }

    $readme = Join-Path $folderPath "README.md"

    if(!(Test-Path $readme))
    {
        $title = if($folder -eq ""){"Professional Development"}
                 else{Split-Path $folder -Leaf}

@"
# $title

> FAEP Education

> TODO

"@ | Set-Content $readme -Encoding UTF8

        Write-Host "Created README : $folder"
    }
}

#------------------------------------------------------------
# Template files
#------------------------------------------------------------

$templateFiles = @(
"competency_matrix_template.md",
"cpd_plan_template.md",
"portfolio_template.md",
"interview_checklist.md",
"professional_development_plan.md",
"mentoring_plan.md",
"career_roadmap_template.md"
)

$templateRoot = Join-Path $root "templates"

foreach($file in $templateFiles)
{
    $path = Join-Path $templateRoot $file

    if(!(Test-Path $path))
    {
        $title = [System.IO.Path]::GetFileNameWithoutExtension($file).Replace("_"," ")

@"
# $title

> FAEP Education

> TODO

"@ | Set-Content $path -Encoding UTF8

        Write-Host "Created Template : $file"
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " Professional Development structure created."
Write-Host "==============================================="