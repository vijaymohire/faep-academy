
# Create-QAI-Course-Hubs.ps1
# Purpose: Establish QAI learning-domain folders and README files.
# Run from: E:\Bhadale IT\github\faep-education
# Existing files are preserved; README files are created only when absent.

$ErrorActionPreference = "Stop"

$RepoRoot = "E:\Bhadale IT\github\faep-education"
$CoursesPath = Join-Path $RepoRoot "academy\courses"

# Keep false for the initial run.
# Review the generated domain READMEs before changing the catalog.
$UpdateCourseCatalog = $false

$Domains = @(
    @{
        Name = "qai_lab"
        Title = "QAI Lab"
        Purpose = "Experiment lifecycle, workflow orchestration, experiment records, emulators, result management, and evidence capture."
        Skills = @(
            "Experiment design and reproducibility",
            "Workflow orchestration and experiment tracking",
            "Result collection and evidence management"
        )
        Project = "Design a reproducible experiment lifecycle exercise."
    },
    @{
        Name = "qai_datacenter"
        Title = "QAI Datacenter"
        Purpose = "QAI Datacenter architecture, resource catalogs, deployment contracts, runtime, interconnects, calibration, qualification, and reference implementation."
        Skills = @(
            "SaaS, PaaS, and IaaS architecture",
            "Resource profiles and deployment contracts",
            "Performance qualification and release evidence"
        )
        Project = "Map existing repository assets against the QAI Datacenter reference blueprint."
    },
    @{
        Name = "qai_compute"
        Title = "QAI Compute"
        Purpose = "Heterogeneous CPU, GPU, HPC, FPGA, RFSoC, and QPU resources, including workload placement and execution."
        Skills = @(
            "Compute architecture and workload characteristics",
            "Heterogeneous execution and resource selection",
            "Performance measurement and comparison"
        )
        Project = "Create a capability-based compute resource comparison."
    },
    @{
        Name = "qai_communication"
        Title = "QAI Communication"
        Purpose = "Classical networking, quantum communication concepts, timing, synchronization, data movement, and hybrid quantum-classical interfaces."
        Skills = @(
            "Control, data, and timing path separation",
            "Network and interconnect fundamentals",
            "Communication latency and measurement"
        )
        Project = "Document the control, data, and timing paths in a reference design."
    },
    @{
        Name = "qai_products"
        Title = "QAI Products"
        Purpose = "QAI product families, solution kits, product development, deployment, service offerings, and customer adoption."
        Skills = @(
            "Product and service architecture",
            "Requirements-to-capability mapping",
            "Product lifecycle and release planning"
        )
        Project = "Map a proposed QAI product to its required platform capabilities."
    },
    @{
        Name = "qai_fabrics"
        Title = "QAI Fabrics"
        Purpose = "Compute, memory, storage, interconnect, and control fabrics, including capability discovery and topology-aware resource binding."
        Skills = @(
            "Resource fabric architecture",
            "Capability discovery and resource binding",
            "Topology and data-movement analysis"
        )
        Project = "Define a logical resource-fabric profile."
    },
    @{
        Name = "qai_emulators"
        Title = "QAI Emulators"
        Purpose = "Emulated devices, controller interfaces, hardware-behaviour models, fault injection, and integration testing."
        Skills = @(
            "Device and controller emulation",
            "Interface compatibility testing",
            "Fault injection and failure handling"
        )
        Project = "Create a mock QSC adapter with explicit simulation limitations."
    },
    @{
        Name = "qai_simulators"
        Title = "QAI Simulators"
        Purpose = "Algorithm, circuit, workload, and system simulation, including experiment configuration, baseline comparisons, and reproducibility."
        Skills = @(
            "Simulation model selection",
            "Experiment configuration and reproducibility",
            "Baseline comparisons and result interpretation"
        )
        Project = "Run or specify a controlled simulation and record its configuration and results."
    },
    @{
        Name = "qai_software_engg"
        Title = "QAI Software Engineering"
        Purpose = "Contracts, schemas, APIs, testing, versioning, packaging, observability, error handling, and release engineering."
        Skills = @(
            "API and schema design",
            "Automated validation and regression testing",
            "Versioning, packaging, and release management"
        )
        Project = "Extend an existing contract with validation tests."
    },
    @{
        Name = "qai_sys_engg"
        Title = "QAI Systems Engineering"
        Purpose = "Requirements, architecture, interface management, traceability, verification, validation, trade studies, and lifecycle governance."
        Skills = @(
            "Requirements analysis and traceability",
            "Architecture and interface management",
            "Verification, validation, and risk management"
        )
        Project = "Create a requirements-to-test traceability matrix."
    }
)

# Validate repository and target directories.
if (-not (Test-Path -LiteralPath $RepoRoot -PathType Container)) {
    throw "Repository root not found: $RepoRoot"
}

if (-not (Test-Path -LiteralPath $CoursesPath -PathType Container)) {
    throw "Courses directory not found: $CoursesPath"
}

Write-Host ""
Write-Host "FAEP Academy - QAI Course Hub Setup" -ForegroundColor Cyan
Write-Host "Repository: $RepoRoot"
Write-Host "Courses:    $CoursesPath"
Write-Host ""

$CreatedFolders = 0
$ExistingFolders = 0
$CreatedReadmes = 0
$ExistingReadmes = 0

foreach ($Domain in $Domains) {
    $FolderPath = Join-Path $CoursesPath $Domain.Name
    $ReadmePath = Join-Path $FolderPath "README.md"

    if (-not (Test-Path -LiteralPath $FolderPath)) {
        New-Item -ItemType Directory -Path $FolderPath | Out-Null
        $CreatedFolders++
        Write-Host "[DIR +] $($Domain.Name)" -ForegroundColor Green
    }
    else {
        $ExistingFolders++
        Write-Host "[DIR =] $($Domain.Name)" -ForegroundColor DarkGray
    }

    if (Test-Path -LiteralPath $ReadmePath) {
        $ExistingReadmes++
        Write-Host "[KEEP ] $($Domain.Name)\README.md already exists" -ForegroundColor Yellow
        continue
    }

    $SkillLines = ($Domain.Skills | ForEach-Object { "- $_" }) -join "`r`n"

    $Content = @"
# $($Domain.Title) — Learning Hub

**Academy:** FAEP Academy
**Domain:** ``$($Domain.Name)``
**Status:** Initial learning-hub draft

## 1. Purpose

$($Domain.Purpose)

This learning hub connects foundational knowledge with the practical
engineering work required by the QAI ecosystem. The material will be
expanded incrementally as implementation needs and skill gaps are identified.

## 2. Learning Objectives

- Understand the domain's core architecture and terminology.
- Identify relevant technologies and engineering skills.
- Apply concepts to a QAI reference implementation.
- Validate outcomes using documented tests and evidence.
- Distinguish proposed designs, simulated results, and measured results.

## 3. Skills and Competencies

$SkillLines

## 4. Course Roadmap

| Learning Unit | Level | Status |
|---|---|---|
| Foundations and terminology | Introductory | Planned |
| Architecture and design | Intermediate | Planned |
| Practical integration | Applied | Planned |

Course availability and status should be updated as learning assets are created.

## 5. Tutorials, Labs, and Notebooks

Add links to relevant tutorials, lab guides, notebooks, and exercises here.
Prefer reusable assets over duplicated course content.

## 6. Reference Implementations

Maintain a register of relevant repositories, vendor examples, research papers,
standards, and working demonstrations.

For each reference, record:

- Source and licence
- Capability addressed
- Hardware and software dependencies
- Maturity: concept, simulation, emulation, hardware-tested, or production-deployed
- Validation evidence and known limitations
- Decision: adopt, adapt, benchmark, defer, or reject

## 7. QAI Ecosystem Integration

Document how this domain relates to QAI Datacenter, QAI Lab, QAI Runtime,
QAI Control Plane, and other applicable components.

Keep shared schemas and contracts aligned with their authoritative repository
locations instead of creating competing definitions.

## 8. Practical Project

**Initial project:** $($Domain.Project)

Define the inputs, expected outputs, acceptance criteria, dependencies,
and evidence required before implementation begins.

## 9. Assessment and Evidence

Record exercises completed, test cases, results, limitations, and outstanding
skills gaps. Do not claim physical performance based solely on simulation.

## 10. Further Reading

Add authoritative documentation, suitable training resources, and research
references as they are reviewed.

## 11. Revision History

| Version | Status | Description |
|---|---|---|
| 0.1.0 | Draft | Initial learning-hub structure |

---

**Maintainer:** FAEP Academy / Bhadale IT
**Tag:** @vijaymohire
"@

    Set-Content -LiteralPath $ReadmePath -Value $Content -Encoding utf8
    $CreatedReadmes++
    Write-Host "[FILE +] $($Domain.Name)\README.md" -ForegroundColor Green
}

# Optional: update the course catalog, but only if explicitly enabled.
if ($UpdateCourseCatalog) {
    $CatalogPath = Join-Path $CoursesPath "README.md"

    if (-not (Test-Path -LiteralPath $CatalogPath -PathType Leaf)) {
        Write-Warning "Course catalog README not found; no catalog was created."
    }
    else {
        $CatalogText = Get-Content -LiteralPath $CatalogPath -Raw

        $SectionTitle = "## QAI Learning Hubs"
        if ($CatalogText -notmatch [regex]::Escape($SectionTitle)) {
            $CatalogEntries = $Domains | ForEach-Object {
                "- [$($_.Title)](./$($_.Name)/README.md)"
            }

            $NewSection = "`r`n$SectionTitle`r`n`r`n" +
                ($CatalogEntries -join "`r`n") +
                "`r`n"

            Add-Content -LiteralPath $CatalogPath -Value $NewSection -Encoding utf8
            Write-Host "[FILE ~] Added QAI Learning Hubs to course catalog" -ForegroundColor Green
        }
        else {
            Write-Host "[KEEP ] QAI Learning Hubs section already exists" -ForegroundColor Yellow
        }
    }
}

Write-Host ""
Write-Host "Setup summary" -ForegroundColor Cyan
Write-Host "Folders created:        $CreatedFolders"
Write-Host "Folders already existed: $ExistingFolders"
Write-Host "READMEs created:        $CreatedReadmes"
Write-Host "READMEs preserved:      $ExistingReadmes"
Write-Host ""
Write-Host "Existing files were not overwritten." -ForegroundColor Green
Write-Host "Review the generated files before committing." -ForegroundColor Cyan
