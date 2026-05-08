# The Nightmare Skills - Quick Install (PowerShell)
# https://github.com/danieldelima037/the-nightmare-skills
#
# Usage: irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 | iex
# Or: .\install.ps1 -Tool claude

param(
    [string]$Tool = "claude"
)

$REPO = "https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main"

Write-Host "🦴 The Nightmare Skills - Installing for: $Tool" -ForegroundColor Cyan
Write-Host ""

function Install-File {
    param($Url, $Dest)
    Write-Host " → $Dest" -ForegroundColor Green
    try {
        Invoke-WebRequest -Uri $Url -OutFile $Dest -UseBasicParsing -ErrorAction Stop
    } catch {
        Write-Host " ❌ Failed to download $Url" -ForegroundColor Red
    }
}

switch ($Tool) {
    "claude" { Install-File "$REPO/CLAUDE.md" ".\CLAUDE.md" }
    "global" {
        $dir = "$env:USERPROFILE\.antigravity"
        if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
        Install-File "$REPO/CLAUDE.md" "$dir\CLAUDE.md"
        Write-Host " Note: Global rules installed in $dir\CLAUDE.md" -ForegroundColor Gray
    }
    default {
        Write-Host "❌ Tool not recognized: $Tool" -ForegroundColor Red
        Write-Host "Available: claude, global" -ForegroundColor Yellow
        exit 1
    }
}

Write-Host ""
Write-Host "✅ Done! The Nightmare Skills installed for: $Tool" -ForegroundColor Green
Write-Host "🦴 Unga bunga. Now go build something." -ForegroundColor Yellow
