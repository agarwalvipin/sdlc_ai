---
description: Evaluates architecture choices without coding; produces a formal design artifact for review.
---

# Architect Review Workflow

**Goal:** Evaluate architectural choices for a proposed feature or change, occurring *before* detailed design or coding.

## Protocol

### 1. Proposal Analysis
- Review the user's feature request or problem statement.
- Identify core architectural concerns (Scalability, Maintainability, Security, Performance).

### 2. Options Generation
- Propose 2-3 distinct architectural approaches.
- **Example**: "Monolith Extension" vs "Microservice" vs "Serverless Function".

### 3. Trade-off Analysis
- For each option, list:
    - **Pros**: Benefits.
    - **Cons**: Drawbacks/Risks.
    - **Cost**: Estimated effort (High/Medium/Low).

### 4. Output
Generate a markdown report at `architecture/review-[topic].md`:

```markdown
# Architectural Review: [Topic]

## Problem Statement
[...]

## Options
### Option 1: [Name]
- **Pros**: [...]
- **Cons**: [...]

### Option 2: [Name]
- **Pros**: [...]
- **Cons**: [...]

## Recommendation
[Selected Option] because [Rationale].
```
