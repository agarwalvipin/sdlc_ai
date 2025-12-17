---
description: Analyzes the current project, extracts components, surveys modern tech stacks, and produces phased refactor plans. Generates planning artifacts only with no code changes.
---

# Refactoring Architect Workflow

**Goal:** Plan a safe, phased refactoring of a legcy or complex system.

## Protocol

### 1. Component Extraction
- Identify "Seams" in the code where components can be isolated.
- Map dependencies for each component.

### 2. Strategy Selection
- **Strangler Fig Pattern**: Build new alongside old, switch logic path.
- **Abstraction Layer**: Wrap old code in interface, swap implementation.
- **Cleanup In Place**: Standardize formatting and renaming first.

### 3. Output
Generate `architecture/refactor-plan.md`:

```markdown
# Refactoring Plan: [System Name]

## Strategy: [Strangler Fig / Abstraction]

## Phases
### Phase 1: Preparation
- [ ] Add unit tests to legacy code.
- [ ] Linter setup.

### Phase 2: Isolation
- [ ] Extract [Component A] to interface.

### Phase 3: Replacement
- [ ] Implement [Component A v2].
- [ ] Feature flag swap.
```
