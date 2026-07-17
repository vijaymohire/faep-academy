# FAEP Academy Metadata Dictionary

> **Category:** Academy Metadata  
> **Version:** 1.0.0  
> **Status:** Draft  
> **Owner:** FAEP Academy Architecture Working Group  
> **Applies To:** Universal Metadata Schema (UMS)

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)

**Related Documents**

- Metadata Schema
- Mega Tags
- Naming Conventions
- Validation Rules

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Metadata
        └── Metadata Dictionary
```

---

# 1. Purpose

The Metadata Dictionary defines the meaning, usage, format, and examples for every metadata field used throughout the FAEP Academy.

It serves as the authoritative reference for contributors, educators, learners, automation tools, and AI systems.

---

# 2. Objectives

The Metadata Dictionary helps ensure:

- Consistent metadata usage
- Shared terminology
- Machine-readable metadata
- Human-readable documentation
- Repository-wide interoperability
- Knowledge Graph compatibility
- Metadata validation

---

# 3. Dictionary Structure

Each metadata entry includes:

- Field Name
- Category
- Description
- Data Type
- Required
- Allowed Values
- Example
- Notes

---

# 4. Identification Metadata

## id

| Property | Value |
|----------|-------|
| Category | Identification |
| Type | String |
| Required | Yes |
| Description | Unique identifier for the asset |
| Example | QC-101 |

---

## title

| Property | Value |
|----------|-------|
| Category | Identification |
| Type | String |
| Required | Yes |
| Description | Human-readable asset title |
| Example | Quantum Gates |

---

## short_title

| Property | Value |
|----------|-------|
| Category | Identification |
| Type | String |
| Required | No |
| Description | Abbreviated title |
| Example | Q Gates |

---

## description

| Property | Value |
|----------|-------|
| Category | Identification |
| Type | Text |
| Required | Yes |
| Description | Full description of the asset |
| Example | Introduction to quantum gates |

---

## summary

| Property | Value |
|----------|-------|
| Category | Identification |
| Type | Text |
| Required | No |
| Description | Short summary |
| Example | Beginner tutorial |

---

# 5. Classification Metadata

## asset_type

Allowed values

- Course
- Tutorial
- Notebook
- Lab
- Project
- Assessment
- Reference
- Template

---

## domain

Examples

- Artificial Intelligence
- Quantum Computing
- Robotics
- Systems Engineering
- Digital Twins

---

## course

Example

```text
Quantum Computing Foundations
```

---

## module

Example

```text
Quantum Circuits
```

---

## topic

Example

```text
Quantum Gates
```

---

## subtopic

Example

```text
Single Qubit Gates
```

---

# 6. Learning Metadata

## roles

Examples

- Student
- Software Engineer
- AI Engineer
- Quantum Engineer
- Research Scientist

---

## level

Allowed values

- Beginner
- Intermediate
- Advanced
- Professional
- Research

---

## estimated_time

Example

```text
2 hours
```

---

## difficulty

Allowed values

- Easy
- Moderate
- Challenging
- Expert

---

## learning_objectives

Description

List of educational objectives.

Example

```yaml
learning_objectives:

- Understand quantum gates

- Execute quantum circuits

- Analyze results
```

---

## learning_outcomes

Description

Expected learner achievements after completion.

---

# 7. Competency Metadata

## skills

Example

```yaml
skills:

- Quantum Gates

- Circuit Design
```

---

## competencies

Example

```yaml
competencies:

- Quantum Computing Foundations
```

---

## knowledge_areas

Examples

- Linear Algebra
- Quantum Mechanics
- Machine Learning

---

## learning_path

Example

```text
Quantum Foundations Path
```

---

## career_path

Example

```text
Quantum Engineer
```

---

## certifications

Example

```text
FAEP Quantum Foundations
```

---

# 8. Technical Metadata

## programming_languages

Examples

- Python
- C++
- Go
- Rust

---

## frameworks

Examples

- Qiskit
- TensorFlow
- PyTorch
- PennyLane

---

## libraries

Examples

- NumPy
- Pandas
- Matplotlib

---

## software

Examples

- VS Code
- JupyterLab
- Docker

---

## hardware

Examples

- GPU
- Quantum Simulator
- Raspberry Pi

---

## cloud_platforms

Examples

- Azure
- AWS
- Google Cloud

---

## datasets

Description

External datasets used by the asset.

---

# 9. Relationship Metadata

Examples

```yaml
tutorials:

labs:

notebooks:

projects:

references:

templates:
```

Purpose

Connects educational assets.

---

# 10. Knowledge Graph Metadata

## knowledge_graph_node

Unique graph node identifier.

---

## parent_nodes

Parent relationships.

---

## child_nodes

Child relationships.

---

## related_nodes

Cross-domain relationships.

---

## ontology_class

Ontology classification.

---

## semantic_tags

Semantic descriptors.

---

# 11. Control Plane Metadata

Examples

```yaml
learning_control_plane:

content_control_plane:

assessment_control_plane:

analytics_control_plane:

portfolio_control_plane:

research_control_plane:
```

Purpose

Supports orchestration within the FAEP architecture.

---

# 12. Analytics Metadata

Examples

- completion_tracking
- progress_tracking
- assessment_tracking
- competency_tracking
- engagement_tracking

Purpose

Supports learner analytics and reporting.

---

# 13. Governance Metadata

Examples

```yaml
license:

visibility:

owner:

review_status:

approval_date:

revision:
```

Purpose

Supports lifecycle management and governance.

---

# 14. Personalization Metadata

Examples

```yaml
recommended_roles:

recommended_level:

recommended_next:

industry_focus:

specializations:
```

Purpose

Supports adaptive and personalized learning experiences.

---

# 15. Metadata Usage Guidelines

Contributors should:

- Use standardized values.
- Avoid custom field names.
- Follow naming conventions.
- Reuse Mega Tags where applicable.
- Keep metadata current.
- Validate before publishing.

---

# 16. Future Evolution

Planned enhancements include:

- JSON Schema definitions
- RDF vocabulary mapping
- OWL ontology integration
- AI-assisted metadata authoring
- Metadata quality dashboards
- Automated validation services

---

# Compliance Checklist

Before publishing an asset, verify that:

- ☐ Required fields are completed.
- ☐ Standard field names are used.
- ☐ Values follow approved vocabularies.
- ☐ Mega Tags are reused where appropriate.
- ☐ Metadata aligns with the Universal Metadata Schema.
- ☐ Relationships are correctly defined.

---

# Related Documents

- Metadata Schema
- Mega Tags
- Naming Conventions
- Validation Rules

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial Metadata Dictionary |

---

**FAEP Academy • Architecture • Metadata • Metadata Dictionary**