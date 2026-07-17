# FAEP Academy Learning Levels

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
- Roles
- Learning Paths

---

# Breadcrumb

```text
FAEP Academy
└── Architecture
    └── Taxonomy
        └── Learning Levels
```

---

# 1. Purpose

This document defines the standardized learning levels used throughout the FAEP Academy.

Learning Levels classify educational assets according to their expected knowledge depth, complexity, learner independence, and competency requirements.

They support curriculum design, adaptive learning, competency mapping, certifications, and career development.

---

# 2. Design Principles

Learning Levels should be:

- Progressive
- Competency-based
- Technology independent
- Reusable
- Measurable
- Role-aware
- Knowledge Graph ready

---

# 3. Learning Progression

```text
Beginner
        │
        ▼
Intermediate
        │
        ▼
Advanced
        │
        ▼
Professional
        │
        ▼
Research
```

---

# 4. Beginner Level

Purpose

Introduce fundamental concepts.

Learners typically:

- Have little or no prior experience.
- Follow guided learning.
- Learn terminology.
- Complete structured exercises.

Typical assets

- Introductory Courses
- Tutorials
- Basic Notebooks
- Guided Labs

---

# 5. Intermediate Level

Purpose

Develop practical understanding.

Learners typically:

- Apply concepts independently.
- Solve moderate problems.
- Complete implementation exercises.
- Explore multiple technologies.

Typical assets

- Tutorials
- Notebooks
- Labs
- Small Projects

---

# 6. Advanced Level

Purpose

Develop engineering expertise.

Learners typically:

- Design complete solutions.
- Integrate multiple disciplines.
- Optimize implementations.
- Analyze trade-offs.

Typical assets

- Advanced Labs
- Engineering Projects
- Architecture Studies
- Case Studies

---

# 7. Professional Level

Purpose

Prepare learners for industry practice.

Learners typically:

- Deliver production-quality solutions.
- Apply standards and governance.
- Lead technical initiatives.
- Mentor others.
- Build professional portfolios.

Typical assets

- Enterprise Projects
- Capstone Projects
- Industry Case Studies
- Professional Certifications

---

# 8. Research Level

Purpose

Advance the state of knowledge.

Learners typically:

- Conduct original research.
- Develop new algorithms.
- Publish findings.
- Build innovative prototypes.
- Explore emerging technologies.

Typical assets

- Research Projects
- Publications
- Experimental Platforms
- Innovation Labs

---

# 9. Competency Expectations

| Level | Expected Outcome |
|--------|------------------|
| Beginner | Understand concepts |
| Intermediate | Apply concepts |
| Advanced | Design solutions |
| Professional | Deliver production systems |
| Research | Create new knowledge |

---

# 10. Relationship with Learning Assets

| Asset | Typical Levels |
|--------|----------------|
| Course | Beginner–Professional |
| Tutorial | Beginner–Advanced |
| Notebook | Beginner–Advanced |
| Lab | Intermediate–Professional |
| Project | Advanced–Research |
| Research Publication | Research |

---

# 11. Relationship with Competencies

```text
Learning Level
        │
        ▼
Skills
        │
        ▼
Competencies
        │
        ▼
Professional Capability
```

---

# 12. Relationship with Roles

Different roles may begin at different learning levels.

Example

```text
Student
    → Beginner

Software Engineer
    → Intermediate

Research Scientist
    → Advanced / Research
```

Learning recommendations should consider both role and prior experience.

---

# 13. Relationship with Metadata

Example

```yaml
level: Intermediate
```

Only one primary level should be assigned to each learning asset.

---

# 14. Relationship with Knowledge Graph

Learning Levels become reusable classification nodes.

```text
Learning Level

│

├── Courses

├── Tutorials

├── Labs

├── Projects

├── Competencies

└── Certifications
```

---

# 15. Governance

Learning Levels should:

- Be consistently applied.
- Reflect learning complexity.
- Avoid unnecessary overlap.
- Support competency-based education.
- Remain stable across Academy releases.

---

# 16. Future Evolution

Potential future enhancements include:

- Adaptive learning levels
- Personalized difficulty recommendations
- AI-generated progression plans
- Competency scoring
- Skill maturity models
- Digital badges

---

# Compliance Checklist

Every educational asset should:

- ☐ Define a primary learning level.
- ☐ Match expected competency depth.
- ☐ Support learner progression.
- ☐ Align with metadata.
- ☐ Integrate with the Knowledge Graph.
- ☐ Follow Academy taxonomy standards.

---

# Related Documents

- Knowledge Domains
- Learning Domains
- Roles
- Learning Paths

---

FAEP Architecture Recommendation

With Knowledge Domains, Learning Domains, Roles, and Learning Levels completed, you've established four orthogonal dimensions that classify every educational asset:

Educational Asset
        │
        ├── Knowledge Domain
        │      (What is learned)
        │
        ├── Learning Domain
        │      (How it is learned)
        │
        ├── Role
        │      (Who it is for)
        │
        └── Learning Level
               (How deep it goes)

This multidimensional model is much more expressive than a traditional curriculum. It enables filtering, personalized recommendations, competency tracking, and Knowledge Graph traversal across several independent dimensions, providing a robust foundation for the FAEP Academy as it grows.
//                
---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial Learning Levels |

---

**FAEP Academy • Architecture • Taxonomy • Learning Levels**