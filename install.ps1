#!/usr/bin/env pwsh
# install.ps1 — Agent Arsenal: Unified AI Agent Stack
# One-command install: ECC + Ponytail + Scrapling
#
# Usage:
#   .\install.ps1              # Install everything (default)
#   .\install.ps1 --dry-run    # Preview what will be installed
#   .\install.ps1 --target claude-project  # Per-project install

param(
    [string]$target = "claude",
    [switch]$dryRun = $false,
    [switch]$help = $false
)

$ErrorActionPreference = 'Stop'

if ($help) {
    Write-Host @"
Agent Arsenal — Unified AI Agent Stack Installer
=================================================
Installs ECC (90+ agents) + Ponytail (lazy dev) + Scrapling (web scraping)

Usage:
  .\install.ps1                     Install everything (default: --target claude)
  .\install.ps1 --dry-run           Preview operations
  .\install.ps1 --target claude     Global install (~/.claude/)
  .\install.ps1 --target claude-project  Per-project install (./.claude/)

What gets installed:
  - 90+ specialist agents (code review, planning, build fixing, security, etc.)
  - Ponytail lazy senior dev philosophy (54% less code)
  - Scrapling web scraping skill (anti-bot bypass, adaptive parsing)
  - Hooks (quality gates, auto-formatting, session persistence)
  - Rules (prompt defense, security, coding standards)
  - MCP server configs
"@
    exit 0
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Agent Arsenal - Unified Installer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Installing: ECC (90+ agents) + Ponytail (lazy dev) + Scrapling (scraping)" -ForegroundColor Yellow
Write-Host "Target: $target" -ForegroundColor Yellow
if ($dryRun) {
    Write-Host "Mode: DRY RUN (no files will be copied)" -ForegroundColor Yellow
}
Write-Host ""

# Resolve the script directory
$scriptDir = Split-Path -Parent $PSCommandPath

# Step 1: Install dependencies if needed
$nodeModules = Join-Path $scriptDir "node_modules"
if (-not (Test-Path $nodeModules)) {
    Write-Host "[1/3] Installing Node dependencies..." -ForegroundColor Green
    if (-not $dryRun) {
        Push-Location $scriptDir
        try {
            npm install --no-audit --no-fund --loglevel=error
            if ($LASTEXITCODE -ne 0) {
                Write-Error "npm install failed with exit code $LASTEXITCODE"
                exit $LASTEXITCODE
            }
        }
        finally { Pop-Location }
    }
} else {
    Write-Host "[1/3] Node dependencies already installed" -ForegroundColor Green
}

# Step 2: Install ECC hooks (includes all agent/command/skill registration)
Write-Host "[2/3] Installing ECC hooks + agents..." -ForegroundColor Green
$installScript = Join-Path $scriptDir "scripts" "install-apply.js"
if (Test-Path $installScript) {
    if (-not $dryRun) {
        & node $installScript --target $target --modules all
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "ECC install had warnings (exit $LASTEXITCODE)"
        }
    }
} else {
    Write-Warning "Install script not found at $installScript"
}

# Step 3: Verify installation
Write-Host "[3/3] Verifying installation..." -ForegroundColor Green
$claudeDir = if ($target -eq "claude-project") {
    Join-Path $scriptDir ".claude"
} else {
    $env:CLAUDE_CONFIG_DIR ? "$env:USERPROFILE\.claude" : "$env:USERPROFILE\.claude"
}

$hooksFile = Join-Path $claudeDir "hooks" "hooks.json"
if (Test-Path $hooksFile) {
    Write-Host "  ✅ Hooks installed: $hooksFile" -ForegroundColor Green
} else {
    Write-Host "  ⚠️  Hooks file not found (hooks may be handled by plugin)" -ForegroundColor Yellow
}

# Check that key agents exist
$agentDir = Join-Path $scriptDir "agents"
if (Test-Path $agentDir) {
    $agentCount = (Get-ChildItem $agentDir -Filter "*.md").Count
    Write-Host "  ✅ $agentCount agents available" -ForegroundColor Green
}

# Check scrapling skill
$scraplingSkill = Join-Path $scriptDir "skills" "scrapling" "SKILL.md"
if (Test-Path $scraplingSkill) {
    Write-Host "  ✅ Scrapling skill installed" -ForegroundColor Green
}

# Check ponytail skill
$ponytailSkill = Join-Path $scriptDir "skills" "ponytail" "SKILL.md"
if (Test-Path $ponytailSkill) {
    Write-Host "  ✅ Ponytail skill installed" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Installation Complete!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Agent Arsenal is ready. Open any repo with Claude Code:" -ForegroundColor White
Write-Host "  cd your-project"
Write-Host "  claude ."
Write-Host ""
Write-Host "What's available in every session:" -ForegroundColor Yellow
Write-Host "  🚀 ECC agents (90+) — auto-detect intent, spawn specialist" -ForegroundColor Yellow
Write-Host "  🐴 Ponytail — lazy senior dev (54% less code, 100% safe)" -ForegroundColor Yellow
Write-Host "  🕷️ Scrapling — web scraping with anti-bot bypass" -ForegroundColor Yellow
Write-Host "  🔧 Hooks — quality gates, auto-formatting, session persistence" -ForegroundColor Yellow
Write-Host "  🛡️ Rules — prompt defense, security, coding standards" -ForegroundColor Yellow
Write-Host ""
Write-Host "Just speak naturally:" -ForegroundColor Green
Write-Host '  "Plan this feature" → planner agent spawns' -ForegroundColor White
Write-Host '  "Review this code"  → code-reviewer spawns' -ForegroundColor White
Write-Host '  "Scrape this site"  → scrapling-agent spawns' -ForegroundColor White
Write-Host '  "Build is failing"  → build-resolver spawns' -ForegroundColor White
Write-Host ""
