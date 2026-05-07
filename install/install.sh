#!/bin/bash
# The Nightmare Skills - Quick Install
# https://github.com/danieldelima037/the-nightmare-skills
#
# Usage: curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- <tool>
# Example: curl -sSL ... | bash -s -- claude
# Example: curl -sSL ... | bash -s -- all

set -e

REPO="https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main"
TOOL="${1:-claude}"

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
    cursor)
        install_file "$REPO/.cursorrules" "./.cursorrules"
        ;;
    windsurf)
        install_file "$REPO/.windsurfrules" "./.windsurfrules"
        ;;
    global)
        mkdir -p ~/.antigravity
        install_file "$REPO/CLAUDE.md" "$HOME/.antigravity/CLAUDE.md"
        echo "  Note: Global rules installed in ~/.antigravity/CLAUDE.md"
        ;;
    all)
        install_file "$REPO/CLAUDE.md" "./CLAUDE.md"
        install_file "$REPO/.cursorrules" "./.cursorrules"
        install_file "$REPO/.windsurfrules" "./.windsurfrules"
        ;;
    *)
        echo "❌ Tool not recognized: $TOOL"
        echo "Available: claude, cursor, windsurf, global, all"
        exit 1
        ;;
esac

echo ""
echo "✅ Done! The Nightmare Skills installed for: $TOOL"
echo "🦴 Unga bunga. Now go build something."
