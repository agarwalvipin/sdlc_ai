# Phase 2: Design

## Options Considered
1. **OAuth2 with Password Flow (FastAPI default)**
   - **Pros**: Built-in to FastAPI, standard compliant.
   - **Cons**: Slightly more verbose setup.
2. **Custom Header Token**
   - **Pros**: Simple.
   - **Cons**: Non-standard, less secure.

## Selected Approach: Option 1 (OAuth2)
We will use FastAPI's `OAuth2PasswordBearer` for strict OpenAPI compliance.

### Architecture Definition
- **Model**: `User` (id, email, hashed_password)
- **Deps**: `get_current_user` checks `Authorization: Bearer <token>`
- **Lib**: `passlib[bcrypt]` for hashing, `python-jose` for JWT.

### Components
- `src/routers/auth.py`: Login endpoint (returns token).
- `src/routers/users.py`: Register endpoint.
- `src/dependencies.py`: Token verification logic.
