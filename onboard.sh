#!/bin/bash
# SDLC AI Governance - Smart Onboarding & Upgrade Script
# Usage: ./onboard.sh /path/to/your/project

set -e

TARGET_DIR="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# --- HELPER FUNCTIONS ---
ask_yes_no() {
    local prompt="$1"
    local default="$2"
    local reply

    if [ "$default" = "Y" ]; then
        prompt="$prompt [Y/n]"
    else
        prompt="$prompt [y/N]"
    fi

    read -p "$prompt " reply
    if [ -z "$reply" ]; then
        reply="$default"
    fi

    case "$reply" in
        Y*|y*) return 0 ;;
        *) return 1 ;;
    esac
}

# --- MAIN LOGIC ---

if [ "$TARGET_DIR" = "." ]; then
    echo "Usage: ./onboard.sh /path/to/your/project"
    exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Target directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "🚀 SDLC AI Governance Manager"
echo "Target: $TARGET_DIR"

# 1. Detect Mode
IS_UPGRADE=0
if [ -d "$TARGET_DIR/architecture" ]; then
    IS_UPGRADE=1
    echo "ℹ️  Existing governance detected. Running in UPGRADE mode."
else
    echo "ℹ️  New installation detected."
fi
echo ""

# 2. Install Core
INSTALL_CORE=1
if [ "$IS_UPGRADE" -eq 1 ]; then
    if ! ask_yes_no "Overwrite/Update Core Templates?" "N"; then
        INSTALL_CORE=0
    fi
fi

if [ "$INSTALL_CORE" -eq 1 ]; then
    echo "📦 Installing Core Framework..."
    
    # Create structure
    mkdir -p "$TARGET_DIR/.agent"
    mkdir -p "$TARGET_DIR/schemas"
    mkdir -p "$TARGET_DIR/templates"
    mkdir -p "$TARGET_DIR/governance"
    mkdir -p "$TARGET_DIR/architecture"
    mkdir -p "$TARGET_DIR/.github/workflows"

    # Copy Core files
    cp -r "$SCRIPT_DIR/.agent/"* "$TARGET_DIR/.agent/"
    cp -r "$SCRIPT_DIR/schemas/"* "$TARGET_DIR/schemas/"
    cp -r "$SCRIPT_DIR/templates/core/"* "$TARGET_DIR/templates/"
    cp -r "$SCRIPT_DIR/governance/"* "$TARGET_DIR/governance/"
    cp "$SCRIPT_DIR/.pre-commit-config.yaml" "$TARGET_DIR/"
    cp "$SCRIPT_DIR/.github/workflows/validate-schemas.yml" "$TARGET_DIR/.github/workflows/"
    
    echo "   ✅ Core installed."
else
    echo "   ⏭️  Skipping Core."
fi

# 3. Add-on Modules (Interactive)
echo ""
echo "🧩 Governance Modules (Optional)"

# --- Data Privacy ---
if ask_yes_no "Do you process PII/User Data? (Adds Phase 3.5)" "N"; then
    echo "   📦 Installing Data Privacy Module..."
    # Copy template
    cp "$SCRIPT_DIR/templates/addons/data-privacy/03x-data-privacy.template.md" "$TARGET_DIR/templates/"
    # Copy schema
    cp "$SCRIPT_DIR/templates/addons/data-privacy/schema.json" "$TARGET_DIR/schemas/data-privacy.schema.json"
    echo "   ✅ Data Privacy installed."
fi

# --- Operations ---
if ask_yes_no "Do you need Operational Runbooks? (Adds Phase 8)" "N"; then
    echo "   📦 Installing Operations Module..."
    # Copy template
    cp "$SCRIPT_DIR/templates/addons/operations/08-operations.template.md" "$TARGET_DIR/templates/"
    # Copy schema
    cp "$SCRIPT_DIR/templates/addons/operations/schema.json" "$TARGET_DIR/schemas/operations.schema.json"
    echo "   ✅ Operations installed."
fi

echo ""
echo "🎉 Done! Your governance framework is ready."
if [ "$IS_UPGRADE" -eq 0 ]; then
    echo "   Run '/phase-0-triage' to start."
fi
