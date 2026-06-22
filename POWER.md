# ⚡ Agent Arsenal — Power Showcase

Everything the unified stack can do, with real examples.

---

## 🚀 Full Stack Development

**You:** *"Create a React dashboard with a backend API"*

**What happens:**
1. `planner` agent spawns → designs architecture with minimal surface area
2. `code-architect` refines → implementation blueprint
3. Code written with ponytail rules → YAGNI, stdlib first, one line over fifty
4. `react-reviewer` auto-spawns after `.tsx` files → quality check
5. `typescript-reviewer` auto-spawns → type safety check
6. `security-reviewer` auto-spawns → OWASP scan
7. `database-reviewer` auto-spawns if SQL written → schema optimization
8. `tdd-guide` if tests requested → write tests first

**Result:** Full-featured app with minimal bloat, validated by 4+ specialists.

---

## 🐛 Debugging & Build Fixes

**You:** *"The build is failing and I don't know why"*

**What happens:**
1. Auto-detects stack (TypeScript? Go? Rust? Python? Java?)
2. Appropriate `*-build-resolver` spawns with minimal fix approach
3. Ponytail ensures fix is surgical — no refactoring, no adding features
4. Post-fix: language `*-reviewer` fires to ensure quality
5. `silent-failure-hunter` if bugs persist

**Real examples:**
| Error | Agent | Fix |
|-------|-------|-----|
| `tsc` errors | `react-build-resolver` | 2-line fix, no config changes |
| `cargo build` borrow checker | `rust-build-resolver` | Single lifetime annotation |
| `go build` errors | `go-build-resolver` | nil check addition |
| Missing migration | `django-build-resolver` | Auto-generates migration |

---

## 🕷️ Web Scraping & Data Extraction

**You:** *"Scrape all product data from this e-commerce site that uses Cloudflare"*

**What happens:**
1. `scrapling-agent` spawns with full Scrapling docs loaded
2. Ponytail ladder → tries CLI first (`scrapling extract stealthy-fetch`)
3. If CLI insufficient → writes minimal Python with `StealthyFetcher`
4. Adaptive parsing saves fingerprints for resilience
5. Result: raw data with minimal code

**Quick CLI examples:**
```bash
# Static page scrape
scrapling extract get https://example.com --ai-targeted

# Cloudflare-bypassed scrape
scrapling extract stealthy-fetch https://example.com --headless --ai-targeted

# Full crawl with spider
scrapling extract stealthy-fetch https://example.com/ --depth 2 --ai-targeted
```

---

## 🔒 Security Audit

**You:** *"Check this codebase for vulnerabilities before we ship"*

**What happens:**
1. `security-reviewer` spawns → full OWASP scan
2. Scans for: hardcoded secrets, SQL injection, XSS, path traversal, CSRF, auth bypasses
3. Confidence-based filtering: only reports >80% confident findings
4. Ponytail ensures fixes are minimal — no rewriting what isn't broken
5. `opensource-sanitizer` if forking — 20+ secret patterns checked

---

## 🧪 Testing & TDD

**You:** *"Add tests for the user authentication flow"*

**What happens:**
1. `tdd-guide` spawns → forces write-tests-first methodology
2. 80%+ coverage target enforced
3. `e2e-runner` for browser-based tests if needed
4. Ponytail ensures tests test behavior, not implementation
5. `code-reviewer` verifies test quality

---

## 📝 Documentation

**You:** *"Document the API endpoints"*

**What happens:**
1. `doc-updater` spawns with codemap generation
2. Reads codebase, traces data flow, identifies all endpoints
3. Generates structured docs
4. Ponytail kills prose bloat — documentation is concise, not verbose
5. Updates `docs/CODEMAPS/*` if codemaps exist

---

## 🔧 Refactoring

**You:** *"Clean up this codebase, there's dead code everywhere"*

**What happens:**
1. `refactor-cleaner` spawns with analysis tools (knip, depcheck, ts-prune)
2. Identifies dead code, unused imports, redundant abstractions
3. `code-simplifier` refactors complex functions
4. Ponytail deletes over refactors — if it's unused, remove, don't rewrite
5. Post-cleanup: language `*-reviewer` fires

---

## 🎯 Performance Optimization

**You:** *"The homepage takes 8 seconds to load, make it faster"*

**What happens:**
1. `performance-optimizer` spawns
2. Analyzes bundle size, render performance, network requests
3. Identifies bottlenecks (large imports, re-renders, N+1 queries)
4. `database-reviewer` for slow queries
5. Ponytail blocks over-optimization — only optimize what's measured
6. `react-reviewer` for React-specific render issues

---

## 📊 Real-World Benchmarks

### Code Reduction (Ponytail)

| Task | Without Ponytail | With Ponytail | Reduction |
|------|-----------------|---------------|:---------:|
| Date picker component | 404 lines | 23 lines | **94%** |
| Color picker | 287 lines | 23 lines | **92%** |
| API route handler | 120 lines | 55 lines | **54%** |
| Form validation | 89 lines | 42 lines | **53%** |
| Average (12 tasks) | — | — | **54%** |

### Cost & Speed

| Metric | Improvement |
|--------|:----------:|
| Tokens per task | **-22%** |
| Cost per task | **-20%** |
| Task completion time | **-27%** |
| Safety score | **100%** |

### Agent Coverage

| Category | Count |
|----------|:-----:|
| Language reviewers | 18 |
| Build resolvers | 10 |
| Domain specialists | 25+ |
| Quality agents | 15+ |
| Workflow agents | 10+ |
| Network/security | 8+ |
| Documentation | 5+ |
| Testing | 5+ |

---

## 📋 Quick Reference Card

```
┌──────────────────────────────────────────────────────────┐
│                    AGENT ARSENAL                         │
│              Say it → It happens                          │
├──────────────────────────────────────────────────────────┤
│                                                          │
│  "Plan X"        → planner / architect                   │
│  "Review X"      → language reviewer                     │
│  "Build fails"   → build resolver                        │
│  "Scrape X"      → scrapling-agent                       │
│  "Test X"        → tdd-guide / e2e-runner                │
│  "Secure X"      → security-reviewer                     │
│  "Optimize X"    → performance-optimizer                 │
│  "Clean X"       → refactor-cleaner                      │
│  "Document X"    → doc-updater                           │
│  "Explore X"     → code-explorer                         │
│                                                          │
├──────────────────────────────────────────────────────────┤
│  Ponytail ladder applied to EVERY code response           │
│  Scrapling available for ANY scraping need                │
│  Hooks active on EVERY tool call                          │
│  Prompt defense active ALWAYS                            │
└──────────────────────────────────────────────────────────┘
```
