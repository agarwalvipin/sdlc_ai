# Governance Modules Catalog

The SDLC AI framework is modular. You always start with the **Core**, but can add optional "Governance Modules" based on your project needs.

## 🏗️ Core Framework (Mandatory)
These phases are installed by default and cannot be skipped.

- **Phase 0: Triage** (Economic Control)
- **Phase 1: Context** (Blast Radius)
- **Phase 2: Design** (Architecture)
- **Phase 3: Security** (Threat Modeling)
- **Phase 4: Decision** (Human Gate)
- **Phase 5: Plan** (Orchestration)
- **Phase 6: Execution** (Coding)
- **Phase 7: Verification** (Quality Gate)

## 🧩 Add-on Modules (Optional)
Run `./onboard.sh` to install these interactive modules.

### Phase 3.5: Data Privacy (GDPR/Sovereignty)
**Trigger:**
- Processing PII (Email, Phone, Names).
- Exporting data to third parties (Stripe, Segment, AWS).
- Changing data retention policies.

**Effect:**
- Adds a `03x-data-privacy` artifact.
- Enforces strict classification of data fields.

### Phase 8: Operations (Day 2 Readiness)
**Trigger:**
- Launching a new service to production.
- Significant changes to system reliability guarantees.

**Effect:**
- Adds a `08-operations` artifact.
- Enforces definition of SLIs (Service Level Indicators) and Runbooks.

## 🔄 How to Upgrade
You can add modules to an existing project at any time.

1.  Navigate to your project root.
2.  Run `./onboard.sh .`
3.  The script will detect your existing install and ask: "Do you want to add [Module]?"
4.  Select "Yes" to patch your governance framework without losing history.
