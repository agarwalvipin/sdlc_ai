# Phase 3: Security Report

## Threat Model (STRIDE)
- **Spoofing**: Mitigated by forcing `HS256` algorithm and verifying signature.
- **Tampering**: JWT signature ensures payload integrity.
- **Information Disclosure**: No sensitive data (like password) in JWT payload.
- **Elevation of Privilege**: Role checks implemented in `get_current_active_user`.

## Risk Assessment
- **Score**: LOW
- **Criticality**: NON-BLOCKING

## Checklist
- [x] `SECRET_KEY` loaded from env (not hardcoded).
- [x] `bcrypt` used for passwords (no MD5/SHA1).
- [x] Token expiration set to 30 minutes.
