#!/bin/bash
# The Nightmare Skills - Quick Install
# https://github.com/danieldelima037/the-nightmare-skills
#
# Usage: curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- <tool>
# Example: curl -sSL ... | bash -s -- claude
# Example: curl -sSL ... | bash -s -- opencode

set -e

REPO="https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main"
TOOL="${1:-claude}"

echo "The Nightmare Skills - Installing for: $TOOL"
echo ""

install_file() {
    local url="$1"
    local dest="$2"
    echo "  -> $dest"
    curl -sSL "$url" -o "$dest"
}

case "$TOOL" in
    claude)
        install_file "$REPO/CLAUDE.md" "./CLAUDE.md"
        ;;
    opencode)
        mkdir -p ~/.config/opencode
        install_file "$REPO/CLAUDE.md" "$HOME/.config/opencode/AGENTS.md"
        echo "  Note: OpenCode rules installed in ~/.config/opencode/AGENTS.md"
        ;;
    *)
        echo "X Tool not recognized: $TOOL"
        echo "Available: claude, opencode"
        exit 1
        ;;
esac

echo ""
echo "Done! The Nightmare Skills installed for: $TOOL"
