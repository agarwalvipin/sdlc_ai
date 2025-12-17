# Phase 1: Context

## Blast Radius
### Read-Write (Target)
- `src/main.py` (Register routers)
- `src/models.py` (Add User)
- `src/auth/*` (New module)

### Read-Only (Context)
- `src/database.py` (DB Session)
- `src/config.py` (Settings)

### Forbidden
- `.env` (Secrets)
- `alembic.ini` (Infra config)

## Constraints
- Must use `python-jose` or `pyjwt`.
- Passwords must be hashed with `bcrypt`.
- Must follow PEP-8.
