# Phase 0: Triage

## Analysis
- **Request**: Add JWT-based authentication to the FastAPI service.
- **Scope**:
    - New `auth` router.
    - New `User` model.
    - Middleware for verifying tokens.
    - Dependency injection for `current_user`.

## Classification
- **Score**: 8/10
- **Type**: MAJOR
- **Rationale**: This is a security-critical change introducing new dependencies (`pyjwt`, `passlib`) and modifying the API surface.
