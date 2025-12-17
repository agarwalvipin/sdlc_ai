---
description: Evaluates whether the system should be refactored or rebuilt from scratch based on security findings, architectural entropy, cost, and future-fit. Produces a binding decision required before execution begins.
---

# Rebuild vs Refactor Decision

**Goal:** Provide a data-driven recommendation on whether to incrementally refactor or perform a clean rebuild.

## Protocol

### 1. Assessment Factors
Evaluate the component on:
- **Technical Debt**: Is it contained or systemic?
- **Test Coverage**: Is there a safety net for refactoring?
- **Business Logic**: Is it well-understood or lost implementation detail?
- **Cost**: Estimate time for Refactor vs Rebuild.

### 2. Decision Matrix
- **Refactor if**:
    - Codebase is large but modular.
    - Business logic is complex and documented.
    - Tests exist.
- **Rebuild if**:
    - Tech stack is obsolete (e.g., Python 2).
    - Architecture is fundamentally flawed (e.g., security by design issues).
    - "Spaghetti code" makes changes riskier than rewrite.

### 3. Output
Generate `architecture/decision-rebuild-refactor.md`:

```markdown
# Rebuild vs Refactor Analysis

## Component: [Name]

## Analysis
- **Debt Score**: [High/Med/Low]
- **Understanding**: [High/Med/Low]

## Recommendation: [REFACTOR / REBUILD]

## Rationale
[Detailed justification]
```
