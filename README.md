<p align="center">
  <img src="assets/ecc-icon.svg" width="160" alt="Agent Arsenal">
</p>

<h1 align="center">🚀 Agent Arsenal</h1>

<p align="center">
  <strong>Unified AI Agent Operating System</strong>
  <br>
  <em>90+ Specialist Agents · Lazy Senior Dev · Web Scraping — One Install</em>
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/github/stars/shouryavarma/agent-arsenal?style=flat-square" alt="Stars"></a>
  <a href="#"><img src="https://img.shields.io/github/license/shouryavarma/agent-arsenal?style=flat-square" alt="License"></a>
  <img src="https://img.shields.io/badge/agents-90%2B-111111?style=flat-square" alt="Agents">
  <img src="https://img.shields.io/badge/skills-200%2B-111111?style=flat-square" alt="Skills">
  <img src="https://img.shields.io/badge/LOC--54%25-success?style=flat-square" alt="54% less code">
</p>

---

**Agent Arsenal** combines three battle-tested tools into one unified platform:

| Component | What It Does | Origin |
|-----------|-------------|--------|
| 🚀 **ECC** | 90+ specialist agents for planning, code review, testing, security, build fixing, and more | [affaan-m/ECC](https://github.com/affaan-m/ECC) |
| 🐴 **Ponytail** | Forces lazy senior dev philosophy — **54% less code**, 100% safe | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |
| 🕷️ **Scrapling** | Web scraping with anti-bot bypass (Cloudflare Turnstile, stealth browsing, adaptive parsing) | [D4Vinci/Scrapling](https://github.com/D4Vinci/Scrapling) |

**They work together automatically.** Speak naturally and the right specialist spawns, writes minimal code, and handles any scraping need.

---

## 📊 The Numbers

| Metric | Improvement |
|--------|:----------:|
| Lines of code | **-54%** (up to -94%) |
| AI tokens | **-22%** |
| Cost per task | **-20%** |
| Task speed | **-27%** |
| Safety | **100%** |
| Agents | **90+** across all languages |
| Skills | **200+** domain knowledge packs |

---

## ✨ How It Works

### Intent → Agent → Minimal Code

You speak naturally, and everything happens automatically:

<table>
<tr>
<th>You Say</th>
<th>What Happens</th>
</tr>
<tr>
<td><i>"Plan this feature"</i></td>
<td>→ <code>planner</code> agent spawns → designs minimal implementation → ponytail prevents over-engineering</td>
</tr>
<tr>
<td><i>"Review this code"</i></td>
<td>→ Language-specific <code>*-reviewer</code> spawns → confidence-based quality check → ponytail catches bloat</td>
</tr>
<tr>
<td><i>"The build is failing"</i></td>
<td>→ Auto-detects stack → spawns <code>*-build-resolver</code> → surgical fix with ponytail rules</td>
</tr>
<tr>
<td><i>"Scrape this site"</i></td>
<td>→ <code>scrapling-agent</code> spawns → tries CLI first → minimal Python → anti-bot bypass built-in</td>
</tr>
<tr>
<td><i>"Is this secure?"</i></td>
<td>→ <code>security-reviewer</code> spawns → OWASP scan → secrets check → vulnerability report</td>
</tr>
<tr>
<td><i>"Make it faster"</i></td>
<td>→ <code>performance-optimizer</code> spawns → profile → optimize → ponytail prevents over-optimization</td>
</tr>
<tr>
<td><i>"Add tests"</i></td>
<td>→ <code>tdd-guide</code> spawns → write tests first → 80%+ coverage target</td>
</tr>
</table>

### The Ponytail Ladder (Applied to Every Response)

```
1. Does this need to exist?          → No? Skip it (YAGNI)
2. Stdlib does it?                   → Use it
3. Native platform feature?          → Use it
4. Installed dependency?             → Use it
5. Can it be one line?               → One line
6. Only then: minimum code that works
```

---

## 🚀 One-Command Install

### Windows (PowerShell)
```powershell
git clone https://github.com/shouryavarma/agent-arsenal.git
cd agent-arsenal
.\install.ps1
```

### macOS / Linux (bash)
```bash
git clone https://github.com/shouryavarma/agent-arsenal.git
cd agent-arsenal
bash ./install.sh --target claude --modules all
```

### What Gets Installed

| Component | Location | Description |
|-----------|----------|-------------|
| 🔧 **Hooks** | `~/.claude/hooks/hooks.json` | Auto-fire on tool calls (quality gates, formatting, session persistence) |
| 🤖 **Agents** | `agents/` | 90+ specialist agents ready to spawn |
| 📚 **Skills** | `skills/` | 200+ domain knowledge packs (detected by tech stack) |
| 📝 **Commands** | `commands/` | Slash commands available in every session |
| 🛡️ **Rules** | `rules/` | Prompt defense + security guardrails |
| 🕷️ **Scrapling** | `skills/scrapling/` | Full scraping skill with docs + examples |
| 🐴 **Ponytail** | `skills/ponytail/` | Lazy senior dev philosophy (always active) |

After install, **every** Claude Code session automatically has all agents, hooks, and skills.

> **No slash commands needed.** Just speak naturally. Intent is auto-detected.

---

## 🔧 Agents Overview (90+)

### Code Quality (Auto-Spawn After Code Changes)

| Language | Agent |
|----------|-------|
| TypeScript / JavaScript | `typescript-reviewer` |
| React / JSX / TSX | `react-reviewer` |
| Python | `python-reviewer` |
| Rust | `rust-reviewer` |
| Go | `go-reviewer` |
| Java (Spring Boot / Quarkus) | `java-reviewer` |
| Kotlin / Android | `kotlin-reviewer` |
| C# / .NET | `csharp-reviewer` |
| Swift / iOS | `swift-reviewer` |
| PHP / Laravel | `php-reviewer` |
| Vue / Nuxt | `vue-reviewer` |
| Flutter / Dart | `flutter-reviewer` |
| Django | `django-reviewer` |
| FastAPI | `fastapi-reviewer` |
| C++ | `cpp-reviewer` |
| F# | `fsharp-reviewer` |
| Machine Learning | `mle-reviewer` |
| Healthcare / HIPAA | `healthcare-reviewer` |

### Build Resolvers (Auto-Detect on Failure)

| Error Type | Agent |
|-----------|-------|
| `tsc`, `vite`, `webpack`, `next` | `react-build-resolver` |
| `go build`, `go vet` | `go-build-resolver` |
| `cargo build`, borrow checker | `rust-build-resolver` |
| `javac`, `mvn`, `gradle` | `java-build-resolver` |
| Kotlin / Gradle | `kotlin-build-resolver` |
| Swift / Xcode | `swift-build-resolver` |
| Dart / Flutter | `dart-build-resolver` |
| Pip / Poetry / Django | `django-build-resolver` |
| C++ / CMake | `cpp-build-resolver` |
| PyTorch / CUDA | `pytorch-build-resolver` |

### Specialists (Auto-Spawn by Intent)

| Intent | Agent |
|--------|-------|
| Feature planning | `planner`, `architect`, `code-architect` |
| Testing / TDD | `tdd-guide` |
| E2E testing | `e2e-runner` |
| Security audit | `security-reviewer` |
| Performance | `performance-optimizer` |
| Refactoring | `refactor-cleaner`, `code-simplifier` |
| Documentation | `doc-updater` |
| Codebase exploration | `code-explorer` |
| Database / SQL | `database-reviewer` |
| Web scraping | **`scrapling-agent`** |
| Marketing | `marketing-agent` |
| SEO | `seo-specialist` |
| Accessibility | `a11y-architect` |
| Open source forking | `opensource-forker` |
| Silent bugs | `silent-failure-hunter` |

---

## 🕷️ Scrapling — Web Scraping

Built-in anti-bot bypass, adaptive parsing, and full crawl framework.

### CLI (Quickest — No Code)
```bash
# Static page
scrapling extract get https://example.com --ai-targeted

# JavaScript rendered
scrapling extract fetch https://example.com --network-idle --ai-targeted

# Cloudflare/anti-bot bypass  
scrapling extract stealthy-fetch https://example.com --headless --ai-targeted

# Multiple URLs at once
scrapling extract get --urls "https://a.com,https://b.com" --ai-targeted
```

### Python (Custom Logic)
```python
from scrapling.fetchers import StealthyFetcher
StealthyFetcher.adaptive = True
p = StealthyFetcher.fetch('https://example.com', headless=True, network_idle=True)
products = p.css('.product', auto_save=True)         # Survives redesigns!
```

### Spider (Full Crawl)
```python
from scrapling.spiders import Spider, Response

class MySpider(Spider):
    name = "demo"
    start_urls = ["https://example.com/"]
    async def parse(self, response: Response):
        for item in response.css('.product'):
            yield {"title": item.css('h2::text').get()}

MySpider().start()
```

### Setup
```bash
pip install "scrapling[all]>=0.4.9"
scrapling install --force
```

---

## ⚙️ Hooks (Auto-Installed Quality Gates)

| Hook | When | What It Does |
|------|------|-------------|
| Bash preflight | Before any shell command | Prevents dangerous commands, suggests tmux, git push checks |
| Quality check | Before commit | Lints staged files, detects console.log/debugger/secrets |
| Doc warning | Before writing .md/.txt | Warns about non-standard doc files |
| Config protection | Before editing configs | Blocks linter/formatter config tampering |
| Auto-format | After edits | Formats JS/TS with Prettier |
| TypeScript check | After .ts/.tsx edits | Runs `tsc --noEmit` |
| Session persistence | Session start/end | Loads prior context, saves state |
| Continuous learning | After every response | Extracts patterns from sessions |
| Cost tracking | After every response | Emits lightweight telemetry |
| Console.log audit | After every response | Warns about debug logging |

---

## 📁 Repo Structure

```
📦 agent-arsenal
├── 📂 agents/             90+ specialist agents (.md with frontmatter)
├── 📂 commands/           Slash commands (tdd, plan, code-review, scraping)
├── 📂 skills/             200+ domain knowledge packs
│   ├── 📂 scrapling/      Scrapling web scraping (SKILL.md + examples + refs)
│   └── 📂 ponytail/       Ponytail lazy senior dev (SKILL.md)
├── 📂 hooks/              Trigger-based automations
├── 📂 rules/              Always-follow guidelines
├── 📂 mcp-configs/        MCP server configs
├── 📂 scripts/            Node.js utilities
├── 📂 tests/              Test suite
├── 📄 install.ps1         One-command Windows installer
├── 📄 install.sh          One-command Unix installer
└── 📄 CLAUDE.md           Auto-loaded configuration
```

---

## 🔒 Prompt Defense

- **Anti-injection**: Unicode/homoglyph/zero-width character attack protection
- **Anti-leak**: Secrets, API keys, credentials never exposed
- **Anti-manipulation**: Role/persona changes, urgency, authority claims blocked
- **Anti-harm**: Malicious, dangerous, exploit, or attack content blocked
- **Untrusted content**: External/fetched/URL data sanitized before use

---

## 🤝 Contributing

Contributions welcome! See the guidelines in each component:

- **Agents**: Markdown with YAML frontmatter (name, description, tools, model)
- **Skills**: Clear sections (When to Use, How It Works, Examples)
- **Commands**: Markdown with description frontmatter
- **Hooks**: JSON with matcher and hooks array

File naming: lowercase-with-hyphens.md

---

## 📜 License

MIT — see [LICENSE](LICENSE).

---

## 🙏 Credits

Agent Arsenal is a unified distribution combining:

- **[ECC](https://github.com/affaan-m/ECC)** by affaan-m — The core agent framework
- **[Ponytail](https://github.com/DietrichGebert/ponytail)** by Dietrich Gebert — Lazy senior dev philosophy
- **[Scrapling](https://github.com/D4Vinci/Scrapling)** by D4Vinci — Web scraping framework

All components are MIT-licensed open source.

---

<p align="center">
  <sub>Built with ❤️</sub>
  <br>
  <sub>Powered by ECC · Ponytail · Scrapling</sub>
</p>
