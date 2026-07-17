# FAEP Academy Graph Relationships

> **Category:** Knowledge Graph
> **Version:** 1.0.0
> **Status:** Draft
> **Owner:** FAEP Academy Architecture Working Group
> **Applies To:** Entire FAEP Academy Ecosystem

---

# Navigation

**Home**

- [FAEP Academy](../README.md)

**Knowledge Graph**

- [Knowledge Graph Overview](README.md)

**Related Documents**

- Ontology
- Graph Nodes
- Graph Schema
- Metadata
- Taxonomy

---

# Breadcrumb

```text
FAEP Academy
└── Knowledge Graph
    └── Graph Relationships
```

---

# 1. Purpose

This document defines the semantic relationships used throughout the FAEP Academy Knowledge Graph.

Relationships connect graph nodes into a meaningful educational network that supports semantic search, AI reasoning, adaptive learning, competency mapping, curriculum generation, and intelligent tutoring.


You now have:

ontology.md → What kinds of entities exist
graph_nodes.md → The entities (vertices)
graph_relationships.md → The semantic connections (edges)

Without relationships, a graph is simply a collection of disconnected nodes. The relationships are what enable reasoning, recommendations, semantic search, learning path generation, and AI tutoring.

A useful design principle is:

Node = Noun
Relationship = Verb

Course
   ── teaches ──► Competency

Lab
   ── develops ──► Skill

Role
   ── requires ──► Competency

---

# 2. Objectives

The relationship model enables:

- Semantic connectivity
- Knowledge discovery
- AI reasoning
- Adaptive learning
- Competency analysis
- Curriculum generation
- Graph traversal
- Educational intelligence

---

# 3. Relationship Architecture

```text
Node

↓

Relationship

↓

Node
```

Every relationship connects two semantic entities.

---

# 4. Relationship Components

Each relationship consists of:

- Source Node
- Relationship Type
- Target Node
- Properties
- Direction
- Metadata

---

# 5. Educational Relationships

Examples include:

```text
Course
    teaches
Competency

Tutorial
    explains
Concept

Notebook
    demonstrates
Technology

Lab
    develops
Skill

Project
    integrates
Knowledge Domain
```

---

# 6. Learning Relationships

Examples

```text
Course
    prerequisite_for
Course

Learning Path
    contains
Course

Assessment
    evaluates
Competency

Certification
    validates
Competency
```

---

# 7. Professional Relationships

Examples

```text
Role
    requires
Competency

Industry
    employs
Role

Career Path
    progresses_to
Role
```

---

# 8. Technology Relationships

Examples

```text
Technology
    supports
Project

Technology
    implements
Algorithm

Framework
    extends
Framework
```

---

# 9. Knowledge Relationships

Examples

```text
Concept
    related_to
Concept

Knowledge Domain
    contains
Topic

Topic
    specializes
Topic

Theory
    supports
Concept
```

---

# 10. AI Relationships

Examples

```text
AI Tutor
    recommends
Learning Asset

Reasoning Engine
    infers
Competency

Learner
    follows
Learning Path

Recommendation Engine
    suggests
Course
```

---

# 11. Relationship Properties

Relationships may include metadata such as:

```text
Weight
Confidence
Priority
Version
Created Date
Source
Status
Evidence
```

---

# 12. Relationship Direction

Relationships are directional.

Example

```text
Course

── teaches ──►

Competency
```

The reverse relationship is not automatically assumed.

---

# 13. Relationship Types

Common relationship verbs include:

- teaches
- explains
- develops
- demonstrates
- requires
- validates
- evaluates
- contains
- belongs_to
- related_to
- extends
- specializes
- implements
- supports
- recommends
- follows
- depends_on
- assesses
- contributes_to
- progresses_to

---

# 14. Relationship Constraints

Relationships should:

- Connect valid node types.
- Follow ontology definitions.
- Be semantically meaningful.
- Avoid ambiguity.
- Support reasoning.
- Maintain consistency.

---

# 15. Relationship Lifecycle

```text
Draft

↓

Validated

↓

Published

↓

Versioned

↓

Deprecated
```

---

# 16. Example Relationship

```yaml
source: course.ai.python.001

relationship: teaches

target: competency.ai.engineering

properties:
  confidence: High
  weight: 0.95
```

---

# 17. Relationship with Ontology

Ontology defines which relationships are valid.

```text
Ontology

↓

Relationship Types

↓

Graph Relationships
```

---

# 18. Relationship with Graph Nodes

Relationships connect graph nodes.

```text
Node

↓

Relationship

↓

Node
```

---

# 19. Relationship with AI

Relationships enable:

- Recommendation engines
- Semantic search
- Competency reasoning
- Learning path generation
- Adaptive tutoring
- Knowledge discovery
- Agent reasoning

---

# 20. Governance

Relationships should:

- Be semantically accurate.
- Follow ontology rules.
- Remain technology-neutral.
- Support graph databases.
- Be version controlled.
- Avoid duplicate semantics.

---

# 21. Future Evolution

Potential enhancements include:

- Weighted relationships
- Probabilistic reasoning
- Temporal relationships
- Context-aware relationships
- Graph embeddings
- Multi-hop reasoning
- Federated graph relationships
- AI-generated semantic links

---

# Compliance Checklist

Every relationship should:

- ☐ Connect valid node types.
- ☐ Define a clear relationship verb.
- ☐ Support ontology constraints.
- ☐ Include required metadata.
- ☐ Support AI reasoning.
- ☐ Maintain semantic consistency.

---

# Related Documents

- Ontology
- Graph Nodes
- Graph Schema
- Metadata
- Taxonomy

---
FAEP Architecture Recommendation

At this point, I would recommend adopting a canonical relationship vocabulary across the entire Academy. Instead of allowing arbitrary relationship names, define a small, reusable set grouped by purpose:

Structural Relationships
────────────────────────
contains
belongs_to
extends
specializes
depends_on

Learning Relationships
──────────────────────
teaches
learns
develops
demonstrates
assesses
validates

Professional Relationships
──────────────────────────
requires
certifies
progresses_to
employs
recommends

Semantic Relationships
──────────────────────
related_to
supports
implements
references
contributes_to

AI Relationships
────────────────
infers
suggests
predicts
discovers
explains


This controlled vocabulary provides several benefits:

Ensures consistency across all graph contributors.
Simplifies graph queries and analytics.
Improves interoperability with RDF, OWL, and property graph implementations.
Makes AI reasoning more predictable by operating over a well-defined semantic relationship set rather than many synonymous verbs.

Combined with the ontology and graph node model, this establishes a solid semantic foundation for the FAEP Academy's Knowledge Graph and prepares the remaining documents, such as graph_schema.md, graph_queries.md, and reasoning.md, to focus on implementation patterns and intelligent graph traversal.
//


---

# Revision History

| Version | Date | Description |
|----------|------|-------------|
| 1.0.0 | Initial | Initial Graph Relationship Model |

---

**FAEP Academy • Knowledge Graph • Graph Relationships**