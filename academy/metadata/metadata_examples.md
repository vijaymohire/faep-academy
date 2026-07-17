# FAEP Academy Metadata Examples

> **Category:** Academy Metadata
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

- Metadata Schema
- Metadata Dictionary
- Mega Tags
- Validation Rules

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Metadata
        └── Metadata Examples
```

---

# 1. Purpose

This document provides practical examples of metadata for different educational assets within the FAEP Academy.

The examples demonstrate how the Universal Metadata Schema (UMS) should be implemented consistently across the repository.

---

# 2. Example Structure

Each example includes:

- Identification
- Classification
- Learning
- Technical
- Competencies
- Relationships
- Knowledge Graph
- Governance

---

# 3. Course Example

```yaml
id: QC-COURSE-001

title: Quantum Computing Foundations

asset_type: Course

version: 1.0.0

status: Published

domain: Quantum Computing

module: Foundations

level: Beginner

estimated_time: 20 hours

roles:

- Student
- Quantum Engineer

skills:

- Quantum Computing

competencies:

- Quantum Foundations

knowledge_graph_node: qc_course_foundations
```

---

# 4. Tutorial Example

```yaml
id: QC-TUT-001

title: Quantum Gates

asset_type: Tutorial

course: Quantum Computing Foundations

module: Quantum Circuits

topic: Gates

level: Beginner

estimated_time: 2 hours

tutorials: []

labs:

- quantum_gate_lab

notebooks:

- quantum_gate_notebook

projects:

- quantum_simulator
```

---

# 5. Notebook Example

```yaml
id: QC-NB-001

title: Quantum Gates Notebook

asset_type: Notebook

language:

- Python

frameworks:

- Qiskit

libraries:

- NumPy

datasets: []

estimated_time: 90 minutes

level: Beginner

related_tutorial:

- quantum_gates
```

---

# 6. Lab Example

```yaml
id: QC-LAB-001

title: Quantum Gate Laboratory

asset_type: Lab

tutorial:

- quantum_gates

notebook:

- quantum_gate_notebook

expected_outputs:

- Circuit Diagram

- Measurement Results

validation:

- Output Comparison

- Unit Tests
```

---

# 7. Project Example

```yaml
id: QC-PROJ-001

title: Quantum Calculator

asset_type: Project

tutorials:

- quantum_gates

labs:

- quantum_gate_lab

notebooks:

- quantum_gate_notebook

deliverables:

- Source Code

- Documentation

- Demonstration

portfolio: true
```

---

# 8. Reference Example

```yaml
id: REF-001

title: Quantum Computing Documentation

asset_type: Reference

author: IBM

url: https://qiskit.org

type: Documentation
```

---

# 9. Assessment Example

```yaml
id: ASM-001

title: Quantum Gates Assessment

asset_type: Assessment

question_count: 20

passing_score: 80

estimated_time: 30 minutes
```

---

# 10. Learning Path Example

```yaml
id: LP-001

title: Quantum Engineer Learning Path

asset_type: Learning Path

courses:

- Quantum Computing Foundations

- Quantum Algorithms

projects:

- Quantum Calculator

career_path:

- Quantum Engineer
```

---

# 11. Knowledge Graph Example

```yaml
knowledge_graph_node: quantum_gates

parent_nodes:

- quantum_circuits

child_nodes:

- pauli_x

- hadamard

related_nodes:

- bloch_sphere

- quantum_states
```

---

# 12. Complete Metadata Example

```yaml
id: QC-TUT-001

title: Quantum Gates

description: Introduction to quantum gates.

asset_type: Tutorial

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

knowledge_graph_node: quantum_gates

learning_control_plane: enabled

analytics_control_plane: enabled

version: 1.0.0
```

---

# 13. Best Practices

Metadata should:

- Be complete.
- Use standardized field names.
- Reuse Mega Tags.
- Avoid duplicate information.
- Follow the Universal Metadata Schema.
- Be validated before publication.

---

# 14. Common Mistakes

Avoid:

- Missing identifiers
- Inconsistent naming
- Custom field names
- Duplicate tags
- Empty required fields
- Incorrect relationships

---

# 15. Future Evolution

Future examples may include:

- AI courses
- Robotics projects
- Digital Twin assets
- Space Systems
- Enterprise Architecture
- QAI Platform engineering

---

# Compliance Checklist

Before publishing metadata, verify that:

- ☐ Required fields are present.
- ☐ Field names follow the schema.
- ☐ Examples align with the Metadata Dictionary.
- ☐ Relationships are valid.
- ☐ Mega Tags are used consistently.
- ☐ Metadata passes validation.

---

# Related Documents

- Metadata Schema
- Metadata Dictionary
- Mega Tags
- Validation Rules

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial Metadata Examples |

---

**FAEP Academy • Architecture • Metadata • Metadata Examples**