# ============================================================
# FAEP Academy Navigation Structure
# Creates navigation folders (README.md placeholders included)
# ============================================================

$Root = "E:\Bhadale IT\github\faep-education"

$Folders = @(
    "learning_paths",

    "domains\ai",
    "domains\quantum",
    "domains\robotics",
    "domains\systems_engineering",
    "domains\cloud",
    "domains\enterprise",
    "domains\optimization",
    "domains\cybersecurity",
    "domains\communications",
    "domains\digital_twins",
    "domains\manufacturing",
    "domains\healthcare",
    "domains\finance",
    "domains\space",

    "roles\student",
    "roles\developer",
    "roles\architect",
    "roles\researcher",
    "roles\data_scientist",
    "roles\systems_engineer",
    "roles\business_analyst",
    "roles\project_manager",
    "roles\executive",

    "industries\automotive",
    "industries\agriculture",
    "industries\banking",
    "industries\energy",
    "industries\government",
    "industries\healthcare",
    "industries\manufacturing",
    "industries\retail",
    "industries\telecommunications",
    "industries\space",

    "capabilities\control_systems",
    "capabilities\communications",
    "capabilities\optimization",
    "capabilities\simulation",
    "capabilities\validation",
    "capabilities\verification",
    "capabilities\testing",
    "capabilities\digital_twins",
    "capabilities\decision_support",

    "schools\analytical",
    "schools\creative",
    "schools\adaptive",
    "schools\collective",
    "schools\systems",
    "schools\ethical",
    "schools\scientific",
    "schools\engineering",

    "math\matrix_methods",
    "math\tensors",
    "math\probability",
    "math\optimization",
    "math\statistics",
    "math\linear_algebra"
)

foreach ($Folder in $Folders)
{
    $Path = Join-Path $Root $Folder

    if (!(Test-Path $Path))
    {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "Created $Path"
    }

    $Readme = Join-Path $Path "README.md"

    if (!(Test-Path $Readme))
    {
@"
# $(Split-Path $Folder -Leaf)

## Purpose

This folder provides curated navigation for FAEP Academy learners.

## Recommended Learning Path

_To be completed._

## Related Notebooks

_To be completed._

## References

_To be completed._
"@ | Set-Content $Readme
    }
}

Write-Host ""
Write-Host "======================================="
Write-Host " FAEP Academy navigation created"
Write-Host "======================================="