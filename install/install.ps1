# The Nightmare Skills - Quick Install (PowerShell)
# https://github.com/danieldelima037/the-nightmare-skills
#
# Usage: irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 | iex
# Or: .\install.ps1 -Tool claude

param(
    [string]$Tool = "all"
)

$REPO = "https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main"

Write-Host "🦴 The Nightmare Skills - Installing for: $Tool" -ForegroundColor Cyan
Write-Host ""

function Install-File {
    param($Url, $Dest)
    Write-Host "  → $Dest" -ForegroundColor Green
    Invoke-WebRequest -Uri $Url -OutFile $Dest -UseBasicParsing
}

switch ($Tool) {
    "claude"       { Install-File "$REPO/CLAUDE.md" ".\CLAUDE.md" }
    "gemini"       { Install-File "$REPO/GEMINI.md" ".\GEMINI.md" }
    "gemini-global" {
        $dir = "$env:USERPROFILE\.gemini"
        if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
        Install-File "$REPO/GEMINI.md" "$dir\GEMINI.md"
    }
    "opencode"     { Install-File "$REPO/OPENCODE.md" ".\OPENCODE.md" }
    "cursor"       { Install-File "$REPO/.cursorrules" ".\.cursorrules" }
    "codex"        { Install-File "$REPO/AGENTS.md" ".\AGENTS.md" }
    "copilot" {
        if (!(Test-Path ".github")) { New-Item -ItemType Directory -Path ".github" -Force | Out-Null }
        Install-File "$REPO/copilot-instructions.md" ".\.github\copilot-instructions.md"
    }
    "windsurf"     { Install-File "$REPO/.windsurfrules" ".\.windsurfrules" }
    "all" {
        Install-File "$REPO/CLAUDE.md" ".\CLAUDE.md"
        Install-File "$REPO/GEMINI.md" ".\GEMINI.md"
        Install-File "$REPO/OPENCODE.md" ".\OPENCODE.md"
        Install-File "$REPO/.cursorrules" ".\.cursorrules"
        Install-File "$REPO/AGENTS.md" ".\AGENTS.md"
        Install-File "$REPO/.windsurfrules" ".\.windsurfrules"
        if (!(Test-Path ".github")) { New-Item -ItemType Directory -Path ".github" -Force | Out-Null }
        Install-File "$REPO/copilot-instructions.md" ".\.github\copilot-instructions.md"
    }
    default {
        Write-Host "❌ Tool not recognized: $Tool" -ForegroundColor Red
        Write-Host "Available: claude, gemini, gemini-global, opencode, cursor, codex, copilot, windsurf, all"
        exit 1
    }
}

Write-Host ""
Write-Host "✅ Done! The Nightmare Skills installed for: $Tool" -ForegroundColor Green
Write-Host "🦴 Unga bunga. Now go build something." -ForegroundColor Yellow
