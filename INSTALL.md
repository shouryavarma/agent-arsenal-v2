# 🚀 Agent Arsenal — Installation Guide

**For beginners.** Step-by-step. No prior knowledge needed.

---

## 📋 What You Need Before Starting

| Requirement | Details | How to Check |
|-------------|---------|-------------|
| **Git** | To download the repo | Open terminal → type `git --version` |
| **Node.js** | Needed for hooks to work | Open terminal → type `node --version` |
| **Claude Code** | The AI assistant this runs on | Install from [claude.ai/code](https://claude.ai/code) |
| **Python 3.10+** | Only needed for web scraping | Open terminal → type `python --version` |

### Don't have these? Here's how to get them:

<details>
<summary><b>🔽 Click to expand: Install Git</b></summary>

**Windows:**
1. Go to https://git-scm.com/download/win
2. Download and run the installer (default options are fine)
3. Restart your terminal

**macOS:**
```bash
# Option 1: If you have Homebrew
brew install git

# Option 2: Install Xcode Command Line Tools
xcode-select --install
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update && sudo apt install git -y
```
</details>

<details>
<summary><b>🔽 Click to expand: Install Node.js</b></summary>

1. Go to https://nodejs.org/
2. Download the **LTS** version (recommended for most users)
3. Run the installer (default options are fine)
4. Restart your terminal
5. Verify: `node --version` should show something like `v18.x.x`
</details>

<details>
<summary><b>🔽 Click to expand: Install Claude Code</b></summary>

1. Go to https://claude.ai/code
2. Follow the instructions to install the CLI
3. Verify: `claude --version` should show a version number
</details>

<details>
<summary><b>🔽 Click to expand: Install Python (for web scraping)</b></summary>

1. Go to https://www.python.org/downloads/
2. Download Python 3.10 or newer
3. **IMPORTANT (Windows):** Check ✅ "Add Python to PATH" during installation
4. Verify: `python --version` should show `Python 3.10.x` or higher
</details>

---

## 📥 Step 1: Download Agent Arsenal

Open your **terminal** (Command Prompt, PowerShell, or Terminal app) and run:

```bash
git clone https://github.com/shouryavarma/agent-arsenal-v2.git
```

**What this does:** Downloads the entire Agent Arsenal package to your computer.

When it finishes, go into the folder:

```bash
cd agent-arsenal-v2
```

✅ **Done?** You should now be inside the `agent-arsenal-v2` folder. Your terminal prompt will show something like:

```
C:\Users\YourName\agent-arsenal-v2>
```

---

## ⚙️ Step 2: Run the Installer

### 🪟 Windows Users

```powershell
.\install.ps1
```

**What this does:**
1. Installs Node.js dependencies (needed for automatic quality checks)
2. Copies 90+ agents to Claude Code's plugin system
3. Installs hooks (auto-formatting, quality gates, session persistence)
4. Installs rules (prompt defense, security guardrails)

**Troubleshooting:** If you get a security error about running scripts, run this first:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Then try `.\install.ps1` again.

---

### 🍎 macOS / 🐧 Linux Users

```bash
bash ./install.sh --target claude --modules all
```

---

## ✅ Step 3: Verify It Worked

Run a quick test to make sure everything installed:

```bash
# Check that hooks are installed
ls ~/.claude/hooks/hooks.json
```

If you see the file path printed (no error), it worked.

---

## 🔬 Step 4: (Optional) Install Scrapling for Web Scraping

If you plan to scrape websites, install Scrapling:

```bash
pip install "scrapling[all]>=0.4.9"
scrapling install --force
```

**What this does:** Installs the web scraping library and downloads browser components needed to bypass Cloudflare and other anti-bot protections.

---

## 🎉 You're Done!

Agent Arsenal is now installed and ready. Here's what happens the **next time you open Claude Code**:

### Quick Test

```bash
# Open any project with Claude Code
cd your-project
claude .
```

Then type something simple like:

> *"Plan a simple to-do list app"*

You should see Agent Arsenal kick in automatically — the `planner` agent will spawn and design a minimal implementation.

### Try These Examples

| What to Type | What Happens |
|-------------|-------------|
| *"Plan this feature"* | `planner` agent designs minimal implementation |
| *"Review my code"* | `code-reviewer` checks quality + ponytail catches bloat |
| *"Build is failing"* | Auto-detects stack, spawns `*-build-resolver` |
| *"Scrape example.com"* | `scrapling-agent` spawns with anti-bot bypass |
| *"Is this secure?"* | `security-reviewer` runs OWASP scan |
| *"Make it faster"* | `performance-optimizer` finds bottlenecks |
| *"Add tests"* | `tdd-guide` writes tests first |

---

## ❓ Frequently Asked Questions

### "Do I need to type slash commands?"

**No.** Just speak naturally. Agent Arsenal auto-detects your intent and spawns the right agent. For example, say *"review this code"* — not `/code-review`.

### "Will this slow down my Claude Code?"

**No.** Agents only spawn when needed. Hooks run in milliseconds. In fact, Ponytail makes everything **faster** by generating less code (-54%).

### "Can I disable Ponytail?"

Yes. Say *"stop ponytail"* or *"normal mode"* to disable it temporarily.

### "Does it work with any project?"

**Yes.** The agents detect whatever language/framework you're using and adapt. Works with React, Python, Rust, Go, Java, Kotlin, Swift, C#, PHP, Vue, Django, and 20+ more.

### "What if something breaks?"

- Open an issue at https://github.com/shouryavarma/agent-arsenal-v2/issues
- Or ask Claude Code and it will try to fix itself using the `harness-optimizer` agent

### "How do I uninstall?"

```bash
# Remove hooks
rm ~/.claude/hooks/hooks.json

# Or just delete the repo folder
rm -rf agent-arsenal-v2
```

No permanent changes are made to your system.

---

## 📁 What Got Installed Where

| What | Where | Size |
|------|-------|------|
| Agent Arsenal code | `agent-arsenal-v2/` | ~50 MB |
| Hooks | `~/.claude/hooks/hooks.json` | ~50 KB |
| Agents (referenced) | In the repo, loaded on demand | — |
| Scrapling (optional) | Python virtual environment | ~200 MB |

---

## 🧠 Pro Tips

**💡 Tip 1: Use with any project**
Agent Arsenal works in **every** Claude Code session after install — not just this repo. Open any project and it's ready.

**💡 Tip 2: Update when you want**
To update, just pull the latest changes and re-run the installer:

```bash
cd agent-arsenal-v2
git pull
.\install.ps1
```

**💡 Tip 3: Web scraping setup**
For the best scraping experience, install Scrapling globally:

```bash
pip install "scrapling[all]>=0.4.9"
scrapling install --force
```

---

## 🆘 Need Help?

- 📖 **Read the full docs:** [README.md](README.md)
- ⚡ **See what it can do:** [POWER.md](POWER.md)
- 🐛 **Report a bug:** [GitHub Issues](https://github.com/shouryavarma/agent-arsenal-v2/issues)
- 🗣️ **Ask the community:** Open a discussion on GitHub

---

<p align="center">
  <sub>Agent Arsenal v1.0.0</sub>
  <br>
  <sub>ECC + Ponytail + Scrapling</sub>
</p>
