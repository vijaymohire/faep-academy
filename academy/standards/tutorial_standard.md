# FAEP Academy Tutorial Standard

> **Category:** Academy Standard  
> **Version:** 1.0.0  
> **Status:** Draft  
> **Owner:** FAEP Academy Architecture Working Group  
> **Applies To:** All tutorials under `tutorials/*`

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)
- [Standards](README.md)

**Related Standards**

- Course Standard
- Metadata Standard
- Lab Standard
- Notebook Standard
- Project Standard
- Navigation Standard

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Standards
        └── Tutorial Standard
```

---

# 1. Purpose

This document defines the standard structure, organization, metadata, navigation, and quality requirements for all tutorials within the FAEP Academy.

A tutorial represents the smallest reusable learning unit and should teach a single topic or closely related set of concepts.

Tutorials are designed to be:

- Modular
- Reusable
- Role-aware
- Metadata-driven
- GitHub-native
- Knowledge Graph enabled

---

# 2. Scope

This standard applies to every tutorial located under:

```text
tutorials/*
```

Examples include:

- Quantum Gates
- Neural Networks
- Digital Twin Modeling
- Systems Thinking
- Prompt Engineering
- Tensor Networks
- Quantum Error Correction

---

# 3. Design Principles

Every tutorial shall:

- Teach one primary topic.
- Be reusable across multiple courses.
- Be independent whenever practical.
- Support multiple learner roles.
- Support multiple learning levels.
- Reference practical examples.
- Connect to labs and notebooks.
- Integrate with the Academy Knowledge Graph.
- Avoid duplication of content.

---

# 4. Standard Tutorial Structure

Every tutorial should follow the structure below.

```text
tutorial/

├── README.md
├── overview.md
├── learning_objectives.md
├── theory.md
├── architecture.md
├── examples.md
├── assessment.md
├── references.md
└── metadata.yml
```

---

# 5. Standard Tutorial README Structure

Every tutorial README should contain the following sections.

## Overview

Describe:

- Purpose
- Topic
- Scope
- Why it matters

---

## Learning Objectives

After completing the tutorial, learners should be able to:

- Explain the concept.
- Apply the concept.
- Analyze engineering scenarios.
- Connect the concept with related topics.

---

## Prerequisites

Include:

- Prior knowledge
- Mathematics
- Programming
- Required tutorials

---

## Theory

Present the underlying concepts.

Topics may include:

- Definitions
- Principles
- Models
- Equations
- Architectures
- Engineering rationale

---

## Architecture

Provide:

- Block diagrams
- Component relationships
- Workflow diagrams
- System interactions

---

## Examples

Include progressively challenging examples.

Suggested progression:

- Basic Example
- Intermediate Example
- Engineering Example
- Industry Example

---

## Labs

Reference associated laboratory exercises.

---

## Notebooks

Reference executable notebooks.

---

## Projects

Reference related engineering projects.

---

## Assessment

Provide:

- Review Questions
- Self Assessment
- Practical Exercises
- Discussion Topics

---

## References

Include:

- Books
- Standards
- Documentation
- Research Papers
- Videos
- Open Source Projects

---

## Related Tutorials

Provide links to:

- Prerequisite Tutorials
- Advanced Tutorials
- Complementary Tutorials

---

# 6. Metadata Standard

Each tutorial shall include standardized metadata.

Example

```yaml
title:
description:

course:
module:
topic:
subtopic:

roles:

level:

industry:

skills:

competencies:

estimated_time:

difficulty:

prerequisites:

labs:

notebooks:

projects:

references:

career_paths:

certifications:

knowledge_graph:

control_plane:

version:
```

---

# 7. Learning Levels

Tutorials should support one or more learning levels.

- Beginner
- Intermediate
- Advanced
- Professional
- Research

---

# 8. Supported Learner Roles

Examples include:

- Student
- Software Engineer
- AI Engineer
- Quantum Engineer
- Robotics Engineer
- Systems Engineer
- Enterprise Architect
- Research Scientist
- Startup Founder
- Technology Consultant
- Educator

---

# 9. Learning Asset Relationships

A tutorial may connect to multiple learning assets.

```text
Tutorial
│
├── Lab
├── Notebook
├── Project
├── Assessment
├── Reference
├── Competency
├── Skill
├── Certification
└── Career Path
```

---

# 10. Knowledge Graph Integration

Each tutorial is represented as a reusable Knowledge Graph node.

Relationships include:

- Belongs to Courses
- Supports Learning Paths
- References Labs
- References Notebooks
- References Projects
- Maps to Skills
- Maps to Competencies
- Maps to Roles
- Maps to Certifications

---

# 11. Control Plane Integration

Tutorials integrate with:

- Learning Control Plane
- Content Control Plane
- Knowledge Graph Control Plane
- Assessment Control Plane
- Analytics Control Plane

---

# 12. Personalization Requirements

Tutorials should support:

- Role-based learning
- Adaptive difficulty
- Personalized recommendations
- Competency gap analysis
- Industry-specific examples
- Learning history

---

# 13. Navigation Requirements

Every tutorial should include:

- Breadcrumbs
- Quick Navigation
- Previous / Next Tutorial
- Related Tutorials
- Related Labs
- Related Notebooks
- Related Projects

---

# 14. Quality Requirements

Every tutorial should:

- Explain one topic thoroughly.
- Include engineering diagrams.
- Include practical examples.
- Include code snippets where appropriate.
- Reference standards.
- Link to labs.
- Link to notebooks.
- Link to projects.
- Support portfolio development.

---

# 15. Repository Principles

Tutorials should remain modular.

They should not duplicate information from other tutorials.

Instead, tutorials should reference shared learning assets.

```text
Tutorial
    │
    ├── Labs
    ├── Notebooks
    ├── Projects
    ├── References
    └── Assessments
```

---

# 16. Future Roadmap

Future enhancements may include:

- AI Tutor Integration
- Interactive Tutorials
- Adaptive Learning
- Knowledge Graph Navigation
- Competency Analytics
- Intelligent Content Recommendations

---

# Compliance Checklist

Before publishing a tutorial, verify that it:

- ☐ Covers one primary topic.
- ☐ Includes standardized metadata.
- ☐ Defines learning objectives.
- ☐ Includes theory and engineering context.
- ☐ References labs, notebooks, and projects.
- ☐ Includes assessments.
- ☐ Supports learner roles and learning levels.
- ☐ Integrates with the Knowledge Graph.
- ☐ Supports Control Plane architecture.
- ☐ Includes navigation and related resources.

---

# Related Standards

- Course Standard
- Metadata Standard
- Lab Standard
- Notebook Standard
- Project Standard
- Navigation Standard

---

# Next Document

**➡ Lab Standard**

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial FAEP Academy Tutorial Standard |

---

**FAEP Academy • Architecture • Standards • Tutorial Standard**