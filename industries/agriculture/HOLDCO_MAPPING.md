# Agriculture — FAEP Education ↔ HoldCo Factory Mapping

## Purpose

This document defines the controlled relationship between the public
FAEP Education Agriculture industry track and the private HoldCo Factory
engineering repository.

The purpose is to maintain a clear separation between:

- Public education and industry demonstrations
- Curated QAI knowledge and learning assets
- Engineering architecture and implementation
- Proprietary development and intellectual property
- Pilot deployment assets
- Post-pilot product and technology development

FAEP Education provides the public-facing learning and demonstration
view.

HoldCo Factory remains the engineering and implementation authority.

---

## Repository Relationship

```text
FAEP Education
GitHub / Public
        │
        │  Curate
        │  Review
        │  Sanitize
        │  Approve
        ▼
Agriculture Industry View
        │
        │  Controlled Mapping
        ▼
HoldCo Factory
GitLab / Engineering
        │
        ├── Architecture
        ├── CPS
        ├── Digital Thread
        ├── Digital Twin
        ├── QAI
        ├── Edge
        ├── Networking
        ├── Inventory
        ├── Deployment
        ├── Validation
        └── Post-Pilot Development
