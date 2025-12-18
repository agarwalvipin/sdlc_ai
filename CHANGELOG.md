# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- **Modular Governance System**: Separated templates into `core/` and `addons/` for extensibility.
- **Phase 3.5: Data Privacy Module**: GDPR/Sovereignty compliance with PII classification, retention policies, and third-party processor tracking.
- **Phase 8: Operations Module**: Day 2 readiness with SLIs, Runbooks, and escalation policies.
- **Interactive Onboarding**: `onboard.sh` now detects existing installations (upgrade mode) and offers optional modules interactively.
- **Module Manifest**: `templates/addons/manifest.json` provides a declarative registry of available add-ons.
- **Visual Dashboard**: `docs/index.html` now supports toggleable add-on phases (3.5, 8) with a "Show Add-ons" button.
- **Modules Catalog**: `governance/MODULES.md` documents all available modules and their triggers.
- **Changelog Discipline**: Added `CHANGELOG.md` and `.agent/rules/changelog-rule.md` to enforce documentation of changes.

### Changed
- **Template Structure**: Moved core templates from `templates/` to `templates/core/`.
- **Onboarding Script**: Refactored `onboard.sh` to support modular installation and upgrades.
