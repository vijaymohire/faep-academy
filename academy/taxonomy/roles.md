# FAEP Academy Roles

> **Category:** Academy Taxonomy
> **Version:** 1.0.0
> **Status:** Draft
> **Owner:** FAEP Academy Architecture Working Group
> **Applies To:** All Academy Learning Assets

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Architecture**

- [Architecture](../architecture/README.md)

**Related Documents**

- Knowledge Domains
- Learning Domains
- Competencies
- Learning Paths

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Taxonomy
        └── Roles
```

---

# 1. Purpose

This document defines the learner and professional roles supported by the FAEP Academy.

Roles provide a learner-centric taxonomy used to personalize educational content, recommend learning paths, map competencies, and guide career development.

Every educational asset should identify one or more target roles.

---

# 2. Design Principles

Roles should be:

- Learner-centric
- Profession-oriented
- Technology-neutral
- Industry-relevant
- Extensible
- Competency-driven
- Knowledge Graph ready

---

# 3. Role Hierarchy

```text
Role Category
        │
        ▼
Professional Role
        │
        ▼
Specialization
        │
        ▼
Competencies
        │
        ▼
Learning Assets
```

---

# 4. Student & Academic Roles

Examples

- Student
- Graduate Student
- Doctoral Researcher
- Educator
- Teaching Assistant
- Academic Researcher

---

# 5. Software & Computing Roles

Examples

- Software Developer
- Software Engineer
- Full Stack Engineer
- Backend Engineer
- Frontend Engineer
- DevOps Engineer
- Platform Engineer
- Site Reliability Engineer

---

# 6. AI & Data Roles

Examples

- AI Engineer
- Machine Learning Engineer
- Data Scientist
- Data Engineer
- Prompt Engineer
- AI Solutions Architect
- AI Research Scientist

---

# 7. Quantum Roles

Examples

- Quantum Engineer
- Quantum Software Developer
- Quantum Algorithm Researcher
- Quantum Hardware Engineer
- Quantum Systems Engineer
- Quantum Computing Researcher

---

# 8. Systems & Enterprise Roles

Examples

- Systems Engineer
- Enterprise Architect
- Solution Architect
- Business Architect
- Technology Architect
- Integration Engineer

---

# 9. Infrastructure & Cloud Roles

Examples

- Cloud Engineer
- Cloud Architect
- Infrastructure Engineer
- Network Engineer
- Security Engineer
- HPC Engineer

---

# 10. Robotics & Embedded Roles

Examples

- Robotics Engineer
- Autonomous Systems Engineer
- Embedded Systems Engineer
- Control Systems Engineer
- Mechatronics Engineer

---

# 11. Research & Innovation Roles

Examples

- Research Scientist
- Innovation Manager
- Technology Strategist
- Product Research Engineer
- R&D Engineer

---

# 12. Business & Leadership Roles

Examples

- Product Manager
- Project Manager
- Program Manager
- Startup Founder
- Technology Consultant
- Innovation Consultant
- Chief Technology Officer

---

# 13. Relationship with Learning Assets

Every educational asset should identify its intended audience.

Example

```yaml
roles:

- Student
- AI Engineer
- Quantum Engineer
```

---

# 14. Relationship with Learning Paths

Roles guide personalized learning.

```text
Role
    │
    ▼
Learning Path
    │
    ▼
Courses
    │
    ▼
Tutorials
    │
    ▼
Notebooks
    │
    ▼
Labs
    │
    ▼
Projects
```

---

# 15. Relationship with Competencies

Each role maps to competency profiles.

Example

```text
AI Engineer

├── Python

├── Machine Learning

├── Deep Learning

├── MLOps

└── AI Deployment
```

---

# 16. Relationship with Knowledge Domains

Roles span multiple knowledge domains.

Example

```text
Quantum Engineer

├── Quantum Computing

├── Software Engineering

├── Mathematics

├── Physics

└── High Performance Computing
```

---

# 17. Relationship with Metadata

Example

```yaml
roles:

- Software Engineer

- AI Engineer

- Research Scientist
```

---

# 18. Relationship with Knowledge Graph

Roles become first-class nodes within the Academy Knowledge Graph.

```text
Role

│

├── Learning Paths

├── Competencies

├── Skills

├── Courses

├── Projects

└── Career Paths
```

---

# 19. Governance

Roles should:

- Reflect current industry practice.
- Avoid duplication.
- Remain stable over time.
- Support emerging professions.
- Be reviewed periodically.

---

# 20. Future Evolution

Future roles may include:

- AI Agent Designer
- Quantum AI Engineer
- Digital Twin Engineer
- Autonomous Systems Architect
- Quantum Network Engineer
- Human-AI Collaboration Specialist
- Responsible AI Engineer

---

# Compliance Checklist

Every educational asset should:

- ☐ Identify one or more target roles.
- ☐ Align with competency mappings.
- ☐ Support personalized learning.
- ☐ Integrate with metadata.
- ☐ Support Knowledge Graph relationships.
- ☐ Follow Academy taxonomy standards.

---

# Related Documents

- Knowledge Domains
- Learning Domains
- Competencies
- Learning Paths

---
FAEP Architecture Recommendation

By this stage, the Academy is developing a multi-dimensional taxonomy rather than a single classification hierarchy:

Educational Asset
        │
        ├── Knowledge Domain
        ├── Learning Domain
        ├── Target Roles
        ├── Skills
        ├── Competencies
        ├── Technologies
        ├── Industry
        ├── Difficulty
        └── Learning Path

This is significantly more powerful than a simple folder structure because it enables multiple ways to discover and personalize content. For example, a learner who is an AI Engineer could receive recommendations that combine AI, cloud computing, MLOps, and quantum computing resources based on role, competencies, and career goals rather than just browsing by subject area. This multidimensional taxonomy will also integrate naturally with the Knowledge Graph and AI Tutor as the FAEP Academy continues to evolve.

//        

---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial Roles Taxonomy |

---

**FAEP Academy • Architecture • Taxonomy • Roles**