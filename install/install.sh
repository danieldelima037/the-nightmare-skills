#!/bin/bash
# The Nightmare Skills - Quick Install
# https://github.com/danieldelima037/the-nightmare-skills
#
# Usage: curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- <tool>
# Example: curl -sSL ... | bash -s -- claude
# Example: curl -sSL ... | bash -s -- all

set -e

REPO="https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main"
TOOL="${1:-all}"

echo "🦴 The Nightmare Skills - Installing for: $TOOL"
echo ""

install_file() {
    local url="$1"
    local dest="$2"
    echo "  → $dest"
    curl -sSL "$url" -o "$dest"
}

case "$TOOL" in
    claude)
        install_file "$REPO/CLAUDE.md" "./CLAUDE.md"
        ;;
    gemini)
        install_file "$REPO/GEMINI.md" "./GEMINI.md"
        ;;
    gemini-global)
        mkdir -p ~/.gemini
        install_file "$REPO/GEMINI.md" "$HOME/.gemini/GEMINI.md"
        ;;
    opencode)
        install_file "$REPO/OPENCODE.md" "./OPENCODE.md"
        ;;
    cursor)
        install_file "$REPO/.cursorrules" "./.cursorrules"
        ;;
    codex)
        install_file "$REPO/AGENTS.md" "./AGENTS.md"
        ;;
    copilot)
        mkdir -p .github
        install_file "$REPO/copilot-instructions.md" "./.github/copilot-instructions.md"
        ;;
    windsurf)
        install_file "$REPO/.windsurfrules" "./.windsurfrules"
        ;;
    all)
        install_file "$REPO/CLAUDE.md" "./CLAUDE.md"
        install_file "$REPO/GEMINI.md" "./GEMINI.md"
        install_file "$REPO/OPENCODE.md" "./OPENCODE.md"
        install_file "$REPO/.cursorrules" "./.cursorrules"
        install_file "$REPO/AGENTS.md" "./AGENTS.md"
        install_file "$REPO/.windsurfrules" "./.windsurfrules"
        mkdir -p .github
        install_file "$REPO/copilot-instructions.md" "./.github/copilot-instructions.md"
        ;;
    *)
        echo "❌ Tool not recognized: $TOOL"
        echo "Available: claude, gemini, gemini-global, opencode, cursor, codex, copilot, windsurf, all"
        exit 1
        ;;
esac

echo ""
echo "✅ Done! The Nightmare Skills installed for: $TOOL"
echo "🦴 Unga bunga. Now go build something."
