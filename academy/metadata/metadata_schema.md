# FAEP Academy Universal Metadata Schema (UMS)

> **Category:** Academy Architecture  
> **Version:** 1.0.0  
> **Status:** Draft  
> **Owner:** FAEP Academy Architecture Working Group  
> **Applies To:** All Academy Assets

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)

**Related Documents**

- Metadata Standard
- Metadata Dictionary
- Naming Conventions
- Validation Rules

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Metadata
        └── Universal Metadata Schema
```

---

# 1. Purpose

The Universal Metadata Schema (UMS) defines the canonical metadata model used throughout the FAEP Academy.

Every educational asset should inherit from this schema to ensure consistency, interoperability, automation, and Knowledge Graph compatibility.

The schema supports:

- Repository Management
- Intelligent Search
- Learning Analytics
- AI Tutor
- Knowledge Graph
- Learning Control Planes
- Personalization
- Competency Tracking

---

# 2. Design Principles

The schema should be

- Universal
- Extensible
- Machine-readable
- Human-readable
- Versioned
- Modular
- Knowledge Graph Ready
- AI Ready
- GitHub Friendly

---

# 3. Universal Metadata Model

```text
Universal Metadata Schema

├── Identification
├── Classification
├── Learning
├── Competencies
├── Technical
├── Relationships
├── Knowledge Graph
├── Control Planes
├── Analytics
├── Governance
└── Personalization
```

---

# 4. Identification Metadata

```yaml
id:
title:
short_title:
description:
summary:

asset_type:

version:

status:

owner:

authors:

contributors:

created:

updated:
```

Purpose

Provides unique identification and ownership.

---

# 5. Classification Metadata

```yaml
domain:

course:

module:

topic:

subtopic:

industry:

tags:

keywords:
```

Purpose

Organizes educational assets.

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

Purpose

Supports learning progression.

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

Purpose

Maps learning to professional competencies.

---

# 8. Technical Metadata

```yaml
programming_languages:

frameworks:

libraries:

software:

hardware:

operating_system:

cloud_platforms:

datasets:

repositories:
```

Purpose

Defines technical implementation requirements.

---

# 9. Learning Asset Metadata

```yaml
tutorials:

notebooks:

labs:

projects:

assessments:

references:

templates:
```

Purpose

Connects related educational resources.

---

# 10. Knowledge Graph Metadata

```yaml
knowledge_graph_node:

parent_nodes:

child_nodes:

related_nodes:

dependencies:

ontology_class:

semantic_tags:
```

Purpose

Supports graph-based learning and semantic search.

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

Purpose

Enables integration with FAEP Control Plane architecture.

---

# 12. Analytics Metadata

```yaml
completion_tracking:

progress_tracking:

assessment_tracking:

competency_tracking:

engagement_tracking:
```

Purpose

Supports dashboards and learner analytics.

---

# 13. Governance Metadata

```yaml
license:

copyright:

visibility:

review_status:

review_cycle:

approver:

approval_date:

revision:
```

Purpose

Supports lifecycle management.

---

# 14. Personalization Metadata

```yaml
recommended_roles:

recommended_level:

recommended_next:

recommended_courses:

recommended_projects:

industry_focus:

specializations:
```

Purpose

Supports adaptive learning.

---

# 15. Complete Example

```yaml
id: QC-101

title: Quantum Gates

asset_type: tutorial

version: 1.0.0

status: Published

domain: Quantum Computing

course: Quantum Computing Foundations

module: Quantum Circuits

topic: Quantum Gates

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

- Quantum Computing Fundamentals

programming_languages:

- Python

frameworks:

- Qiskit

tutorials: []

labs:

- quantum_gate_lab

projects:

- quantum_simulator

knowledge_graph_node: quantum_gates

learning_control_plane: enabled

analytics_control_plane: enabled

version: 1.0.0
```

---

# 16. Schema Inheritance

All Academy assets extend the Universal Metadata Schema.

```text
Universal Metadata Schema
        │
        ├── Course
        ├── Tutorial
        ├── Notebook
        ├── Lab
        ├── Project
        ├── Assessment
        ├── Reference
        └── Template
```

---

# 17. Metadata Lifecycle

```text
Create

↓

Validate

↓

Publish

↓

Index

↓

Discover

↓

Analyze

↓

Update

↓

Archive
```

---

# 18. Validation Requirements

Metadata should

- Be complete
- Follow naming conventions
- Pass schema validation
- Use approved vocabularies
- Be version controlled
- Support automation

---

# 19. Future Evolution

Future schema enhancements include

- JSON Schema support
- YAML validation
- RDF serialization
- OWL ontology mapping
- Graph database integration
- AI metadata generation
- Semantic reasoning

---

# Compliance Checklist

Every metadata file should:

- ☐ Implement Universal Metadata Schema
- ☐ Include required fields
- ☐ Pass validation
- ☐ Support Knowledge Graph
- ☐ Support Control Planes
- ☐ Support Analytics
- ☐ Support Personalization
- ☐ Use semantic versioning

---

# Related Documents

- Metadata Standard
- Metadata Dictionary
- Naming Conventions
- Validation Rules

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Universal Metadata Schema |

---

**FAEP Academy • Architecture • Metadata • Universal Metadata Schema**