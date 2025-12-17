---
description: Reviews code changes in a branch or PR for correctness, risks, style, security, and architectural impact.
---

# Code Review Workflow

**Goal:** Provide a human-grade code review for a set of changes.

## Protocol

### 1. Diff Analysis
- Read the git diff or list of modified files.
- Identify the scope of changes.

### 2. Review Criteria
Check against the following:
- **Correctness**: Does it do what it claims?
- **Security**: Are there new vulnerabilities (Injection, Auth, etc.)?
- **Style**: Does it follow project patterns?
- **Architecture**: Does it violate module boundaries?

### 3. Output
Generate a review report:

```markdown
# Code Review Report

## Summary
- **Risk Level**: [Low/Medium/High]
- **Status**: [Approve / Request Changes]

## Findings
### [Critical/Major/Minor] - [Issue Title]
- **File**: `path/to/file:line`
- **Issue**: Description of the problem.
- **Suggestion**: How to fix it.

### [Nit] - [Issue Title]
- ...
```
