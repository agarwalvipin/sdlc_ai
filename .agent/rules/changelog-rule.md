---
trigger: always_on
---

# Changelog Discipline

## CHANGELOG-1 — MANDATORY UPDATE

Every commit that adds, removes, or modifies **user-facing behavior** MUST include a corresponding entry in `CHANGELOG.md` under the `[Unreleased]` section.

### What Requires a Changelog Entry

| Change Type | Example | Required? |
| :--- | :--- | :--- |
| New feature | Added Phase 3.5 module | ✅ Yes |
| Bug fix | Fixed schema validation error | ✅ Yes |
| Breaking change | Renamed `onboard.sh` flags | ✅ Yes |
| Internal refactor | Reorganized folder structure | ⚠️ Only if it affects users |
| Documentation typo | Fixed typo in README | ❌ No |
| CI/CD change | Updated GitHub Actions | ❌ No (unless user-facing) |

### Entry Format

Follow [Keep a Changelog](https://keepachangelog.com/) conventions:

```markdown
## [Unreleased]

### Added
- Brief description of new feature.

### Changed
- Brief description of change to existing behavior.

### Fixed
- Brief description of bug fix.

### Removed
- Brief description of removed feature.
```

### Enforcement

- **AI Workflows**: Before completing Phase 6 (Execution), verify `CHANGELOG.md` has been updated.
- **Pre-commit**: Consider adding a hook to check for changelog modifications on non-trivial commits.
