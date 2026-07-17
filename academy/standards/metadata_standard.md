# FAEP Academy Metadata Standard

> **Category:** Academy Standard  
> **Version:** 1.0.0  
> **Status:** Draft  
> **Owner:** FAEP Academy Architecture Working Group  
> **Applies To:** All Academy assets

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)
- [Standards](README.md)

**Related Standards**

- Course Standard
- Tutorial Standard
- Notebook Standard
- Lab Standard
- Project Standard
- Navigation Standard

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Standards
        └── Metadata Standard
```

---

# 1. Purpose

This document defines the standard metadata model used throughout the FAEP Academy.

Metadata provides a common language for describing educational assets and enables:

- Intelligent search
- Personalized learning
- Knowledge Graph construction
- Learning analytics
- AI Tutor recommendations
- Learning Control Planes
- Repository automation

Metadata is mandatory for every educational asset.

---

# 2. Scope

This standard applies to:

- Courses
- Tutorials
- Notebooks
- Labs
- Projects
- References
- Templates
- Assessments
- Certifications
- Learning Paths
- Career Paths

---

# 3. Metadata Design Principles

Metadata shall be

- Consistent
- Machine-readable
- Human-readable
- Extensible
- Reusable
- Versioned
- Git-friendly
- Knowledge Graph compatible

---

# 4. Metadata Categories

Metadata is organized into the following categories.

| Category | Purpose |
|-----------|---------|
| Identification | Basic asset identity |
| Classification | Educational categorization |
| Learning | Educational context |
| Technical | Software and technology |
| Competencies | Skills mapping |
| Relationships | Knowledge Graph links |
| Governance | Ownership and versioning |
| Analytics | Learning metrics |
| Personalization | Recommendation engine |

---

# 5. Core Metadata Schema

Every learning asset should contain the following metadata.

```yaml
id:
title:
description:
summary:

asset_type:

domain:
course:
module:
topic:
subtopic:

version:
status:
owner:
authors:
contributors:

created:
updated:
```

---

# 6. Learning Metadata

```yaml
roles:

level:

estimated_time:

difficulty:

learning_objectives:

learning_outcomes:

prerequisites:

recommended_background:
```

---

# 7. Competency Metadata

```yaml
skills:

competencies:

knowledge_areas:

learning_path:

career_path:

certifications:
```

---

# 8. Technical Metadata

```yaml
programming_languages:

frameworks:

libraries:

software:

hardware:

operating_system:

datasets:

cloud_platforms:

repositories:
```

---

# 9. Learning Asset Metadata

```yaml
tutorials:

labs:

notebooks:

projects:

assessments:

references:
```

---

# 10. Knowledge Graph Metadata

```yaml
knowledge_graph_node:

parent_nodes:

child_nodes:

related_nodes:

dependencies:

tags:

keywords:
```

---

# 11. Control Plane Metadata

```yaml
learning_control_plane:

content_control_plane:

assessment_control_plane:

analytics_control_plane:

portfolio_control_plane:

research_control_plane:
```

---

# 12. Personalization Metadata

```yaml
recommended_roles:

recommended_level:

recommended_next:

industry:

use_cases:

specializations:
```

---

# 13. Governance Metadata

```yaml
license:

copyright:

review_status:

approver:

approval_date:

revision:

visibility:
```

---

# 14. Analytics Metadata

```yaml
completion_tracking:

assessment_tracking:

competency_tracking:

portfolio_tracking:

engagement_tracking:
```

---

# 15. Example Metadata

```yaml
id: QC-101

title: Quantum Gates

description: Introduction to quantum gates.

asset_type: tutorial

domain: Quantum Computing

course: Quantum Computing Fundamentals

module: Quantum Circuits

topic: Gates

roles:

- Student
- Quantum Engineer

level: Beginner

estimated_time: 2 hours

difficulty: Easy

skills:

- Quantum Gates
- Bloch Sphere

competencies:

- Quantum Foundations

tutorials:

- qc_gates

labs:

- quantum_gate_lab

notebooks:

- quantum_gate_demo

projects:

- quantum_calculator

knowledge_graph_node: qc_gates

version: 1.0.0
```

---

# 16. Metadata Lifecycle

Metadata evolves through the following lifecycle.

```text
Create

↓

Validate

↓

Publish

↓

Update

↓

Review

↓

Archive
```

---

# 17. Validation Rules

Metadata should

- Be complete.
- Follow naming conventions.
- Use standardized values.
- Avoid duplication.
- Be machine-readable.
- Be version controlled.

---

# 18. Naming Conventions

Recommended naming conventions.

| Element | Convention |
|----------|------------|
| IDs | Uppercase with hyphens |
| Tags | lowercase |
| File Names | snake_case |
| YAML Keys | snake_case |
| Versions | Semantic Versioning |

Examples

```text
quantum_gates.md

metadata.yml

learning_objectives.md

version: 1.2.0
```

---

# 19. Integration Points

Metadata enables

- Repository navigation
- Knowledge Graph generation
- Search
- AI Tutor
- Recommendation Engine
- Analytics
- Learning Dashboards
- Competency Tracking

---

# 20. Future Roadmap

Future enhancements include

- Automatic metadata generation
- AI-assisted tagging
- Semantic search
- Metadata validation tools
- Ontology alignment
- Graph database integration

---

# Compliance Checklist

Before publishing an asset, verify that it:

- ☐ Includes standardized metadata.
- ☐ Uses approved naming conventions.
- ☐ Includes learning metadata.
- ☐ Includes competency metadata.
- ☐ Includes Knowledge Graph metadata.
- ☐ Includes Control Plane metadata.
- ☐ Includes governance metadata.
- ☐ Includes version information.
- ☐ Passes metadata validation.

---

# Related Standards

- Course Standard
- Tutorial Standard
- Notebook Standard
- Lab Standard
- Project Standard
- Navigation Standard

---

# Next Document

**➡ Navigation Standard**

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial FAEP Academy Metadata Standard |

---

**FAEP Academy • Architecture • Standards • Metadata Standard**