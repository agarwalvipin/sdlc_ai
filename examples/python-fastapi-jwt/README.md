# Example: Add JWT Authentication (Python/FastAPI)

This directory contains a complete set of governance artifacts for a realistic feature request: **Adding JWT Authentication to a FastAPI service**.

## Scenario
A developer needs to secure a public API. They want to use standard OAuth2 password flow with JWT tokens.

## Artifacts Walkthrough

1.  **[00-triage.md](./architecture/00-triage.md)**: The request is classified as **MAJOR** (Score 8/10) because it involves security and schema changes.
2.  **[01-context.md](./architecture/01-context.md)**: We identify the **Blast Radius**. Security files are marked forbidden to avoid accidental exposure.
3.  **[02-design.md](./architecture/02-design.md)**: We choose standard **OAuth2** over custom headers for better ecosystem compatibility.
4.  **[03-security.md](./architecture/03-security.md)**: A **STRIDE** analysis confirms that using signed JWTs mitigates spoofing and tampering.
5.  **[04-decision.md](./architecture/04-decision.md)**: A human **Approves** the design.
6.  **[05-plan.md](./architecture/05-plan.md)**: The work is broken down into **Epics** (Setup, Logic, Endpoints).
7.  **[06-report.md](./architecture/06-report.md)**: A log of the actual execution and commits.
8.  **[07-verify.md](./architecture/07-verify.md)**: Proof that tests passed.
