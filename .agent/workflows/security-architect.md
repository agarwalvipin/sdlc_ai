---
description: security-architect Workflow
---

# Security Architect Workflow

**Goal:** Perform a deep-dive security review of the architecture or codebase.

## Protocol

### 1. Attack Surface Analysis
- Identify all entry points (API, UI, Workers).
- Identify data sinks (DB, Logs, External APIs).
- Identify trust boundaries.

### 2. Threat Modeling
- Check for **OWASP Top 10** vulnerabilities.
- Check for **Logic Flaws** (e.g., price manipulation).
- Check for **Infrastructure Risks** (open ports, weak secrets).

### 3. Output
Generate `architecture/security-audit.md`:

```markdown
# Security Audit Report

## Scope
[Repository/Component List]

## Critical Findings
1. **[Vulnerability Name]**
   - **Sev**: Critical
   - **Location**: `auth.py`
   - **Fix**: Rotate keys and implement vault.

## Recommendations
- [ ] Enable 2FA
- [ ] Sanitize all inputs
```
