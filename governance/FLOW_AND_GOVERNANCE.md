# AI-Assisted SDLC: Flow & Governance (Hybrid Model)

**Version:** 2.1.0 (Hybrid + CI/CD)
**Status:** Active
**System Authority:** Highest

---

## 1. System Philosophy

1.  **The Double-Write Rule:** Every phase MUST produce two artifacts:
    *   **Human Readable:** `.md` for reasoning and audit.
    *   **Machine Enforceable:** `.json` for strict validation and automation.
2.  **The Ledger is Truth:** State is maintained in the `architecture/` directory. If it involves a file change, it’s a commit.
3.  **Strict Serialization:** Phases cannot be skipped. Phase N requires Phase N-1's artifacts.
4.  **Separation of Powers:**
    *   **AI:** Analyst, Designer, Coder.
    *   **Human:** Strategic Decision Maker (Phase 4).
    *   **Automation:** Enforcer (CI/CD + JSON Schema).

---

## 2. Master Workflow (The 8 Phases)

See `README.md` for the visual flow.

### Phase 0: Triage (Economic Control)
*   **Goal:** Classify work to prevent over-engineering.
*   **Artifacts:** `00-triage.md`, `00-triage.json`
*   **Schema:** `schemas/triage-decision.schema.json`
*   **Routing:** MAJOR -> Phase 1. MINOR -> Phase 7.

### Phase 1: Context (Blast Radius)
*   **Goal:** Identify dependencies and lock permissions.
*   **Artifacts:** `01-context.md`, `01-context.json`
*   **Schema:** `schemas/context-spec.schema.json`

### Phase 2: Design (Architecture)
*   **Goal:** Propose technical solutions. The "Thinking" phase.
*   **Artifacts:** `02-design.md`, `02-design.json`
*   **Schema:** `schemas/design-spec.schema.json`

### Phase 3: Security (Auditor)
*   **Goal:** Threat modeling the *Design* using STRIDE.
*   **Artifacts:** `03-security.md`, `03-security.json`
*   **Schema:** `schemas/security-report.schema.json`

### Phase 4: Governance (The Human Firewall)
*   **Goal:** Strategic Authorization.
*   **Rule:** The AI **CANNOT** proceed past this point without a Human Signature.
*   **Artifacts:** `04-decision.md` (Signed), `04-decision.json`
*   **Schema:** `schemas/decision-record.schema.json`

### Phase 5: Plan (Orchestration)
*   **Goal:** Convert the decision into a deterministic task list.
*   **Artifacts:** `05-plan.md`, `05-plan.json`
*   **Schema:** `schemas/execution-plan.schema.json`

### Phase 6: Execution (The Builder)
*   **Goal:** Code generation based *strictly* on the Plan.
*   **Artifacts:** `06-report.md` (Log of changes)

### Phase 7: Verification (The Gate)
*   **Goal:** Prove it works against Acceptance Criteria.
*   **Artifacts:** `07-verify.md`

---

## 3. Error Handling & Recovery

- **Phase 0-3 Errors**: Fix the artifacts and re-validate.
- **Phase 4 Rejection**: If Human rejects, loop back to Phase 2 (Design) or Abort.
- **Phase 6 Failure**:
    - **Implementation Error**: Fix code, retry.
    - **Context Error**: Backtrack to Phase 1 to expand blast radius.
    - **Design Flaw**: Backtrack to Phase 2 to adjust architecture.
- **Phase 7 Failure**: Must fix in Phase 6.

---

## 4. Automation & Tooling

We provide standard tooling to enforce this governance:
- **Schemas**: Located in `schemas/`.
- **Validation**:
    - **Local**: `pre-commit` hooks.
    - **Remote**: GitHub Actions.
- **Templates**: Located in `templates/` for quick start.
