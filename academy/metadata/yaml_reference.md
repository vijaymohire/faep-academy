# FAEP Academy YAML Reference

> **Category:** Academy Metadata  
> **Version:** 1.0.0  
> **Status:** Draft  
> **Owner:** FAEP Academy Architecture Working Group  
> **Applies To:** All YAML metadata files

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)

**Related Documents**

- Metadata Schema
- Metadata Dictionary
- Metadata Examples
- Mega Tags
- Validation Rules

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Metadata
        └── YAML Reference
```

---

# 1. Purpose

This document provides a reference for writing valid YAML files within the FAEP Academy.

It explains YAML syntax, formatting conventions, and recommended practices for metadata files.

All metadata should be stored using UTF-8 encoded YAML.

---

# 2. Why YAML?

YAML is used because it is:

- Human-readable
- Machine-readable
- Git-friendly
- Easy to edit
- Widely supported
- Suitable for configuration and metadata

---

# 3. Basic Structure

```yaml
title: Quantum Gates

version: 1.0.0

status: Published
```

---

# 4. Key-Value Pairs

```yaml
title: Quantum Gates

description: Introduction to quantum gates.

difficulty: Beginner
```

---

# 5. Lists

```yaml
roles:

- Student
- Quantum Engineer
- Research Scientist
```

Inline form

```yaml
roles: [Student, Quantum Engineer]
```

Preferred style: block lists.

---

# 6. Nested Objects

```yaml
author:

  name: Jane Doe

  organization: FAEP Academy

  email: jane@example.com
```

---

# 7. Multiple Nested Levels

```yaml
knowledge_graph:

  node: quantum_gates

  parent:

    id: quantum_circuits

  children:

    - pauli_x

    - hadamard
```

---

# 8. Boolean Values

```yaml
published: true

portfolio: false
```

Use lowercase values.

---

# 9. Numeric Values

```yaml
estimated_hours: 8

passing_score: 80

version_major: 1
```

---

# 10. Empty Values

```yaml
datasets: []

projects: []

notes:
```

Use empty lists for collections.

---

# 11. Multi-line Text

```yaml
description: |
  This tutorial introduces
  the concept of quantum gates
  using practical examples.
```

---

# 12. Comments

```yaml
# Metadata Version

version: 1.0.0
```

Comments should explain intent, not duplicate obvious information.

---

# 13. Complete Example

```yaml
id: QC-TUT-001

title: Quantum Gates

description: |
  Introduction to quantum gates
  for beginner learners.

asset_type: Tutorial

domain: Quantum Computing

course: Quantum Computing Foundations

module: Quantum Circuits

roles:

- Student

- Quantum Engineer

level: Beginner

estimated_time: 2 hours

difficulty: Easy

skills:

- Quantum Gates

- Circuit Design

competencies:

- Quantum Foundations

programming_languages:

- Python

frameworks:

- Qiskit

libraries:

- NumPy

software:

- JupyterLab

knowledge_graph:

  node: quantum_gates

  parent: quantum_circuits

version: 1.0.0
```

---

# 14. Naming Conventions

Use

```yaml
learning_objectives

knowledge_graph

estimated_time

career_path
```

Avoid

```yaml
LearningObjectives

KnowledgeGraph

EstimatedTime

careerPath
```

Use **snake_case** for keys.

---

# 15. Formatting Rules

- Use spaces instead of tabs.
- Indent with two spaces.
- Keep keys lowercase.
- Use UTF-8 encoding.
- Use consistent ordering of fields.
- Avoid trailing whitespace.

---

# 16. Common Mistakes

Incorrect indentation

```yaml
roles:
- Student
  - Engineer
```

Correct

```yaml
roles:
  - Student
  - Engineer
```

---

Incorrect key naming

```yaml
LearningObjectives:
```

Correct

```yaml
learning_objectives:
```

---

Incorrect tabs

```text
❌ Tabs

✔ Spaces
```

---

# 17. Validation

Before committing YAML files, verify:

- Valid syntax
- Correct indentation
- Required metadata fields
- Approved field names
- Consistent formatting
- Schema compliance

---

# 18. Recommended Tools

Examples

- Visual Studio Code
- YAML Language Support Extension
- GitHub
- yamllint
- Prettier (YAML)

---

# 19. Best Practices

- Keep metadata concise.
- Reuse approved values.
- Follow the Universal Metadata Schema.
- Validate before publishing.
- Include comments only when helpful.
- Keep field ordering consistent.

---

# 20. Future Evolution

Future improvements may include:

- Automatic YAML generation
- Schema validation
- Metadata editors
- IDE templates
- AI-assisted authoring
- Repository linting

---

# Compliance Checklist

Before publishing a YAML file, verify that:

- ☐ Syntax is valid.
- ☐ Indentation uses spaces.
- ☐ Keys use snake_case.
- ☐ Required fields are present.
- ☐ Lists are correctly formatted.
- ☐ Metadata matches the Universal Metadata Schema.
- ☐ File passes YAML validation.

---

# Related Documents

- Metadata Schema
- Metadata Dictionary
- Metadata Examples
- Mega Tags
- Validation Rules

---

Architectural recommendation

This document positions YAML as the serialization format for the Universal Metadata Schema rather than the schema itself. That distinction is important:

Universal Metadata Schema (Logical Model)
                │
                ▼
Metadata Dictionary (Semantics)
                │
                ▼
YAML Reference (Serialization Format)
                │
                ▼
metadata.yml (Implementation)
                │
                ▼
Knowledge Graph / APIs / Automation

By separating the logical model from its serialization, you retain the flexibility to support additional formats in the future (such as JSON, JSON-LD, RDF, or XML) without changing the underlying metadata architecture. This is a common pattern in enterprise information systems and fits well with the long-term evolution of the FAEP Academy.

//

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial YAML Reference |

---

**FAEP Academy • Architecture • Metadata • YAML Reference**