---
description: Scrape, crawl, or extract data from websites using Scrapling with anti-bot bypass and stealth browsing.
---

# Scrapling — Web Scraping & Crawling

Scrape anything from a single URL to a full-scale concurrent crawl, with automatic Cloudflare bypass, adaptive parsing, and proxy rotation.

## Quick CLI (Try First)

```bash
# Simple scrape (static page)
scrapling extract get https://example.com --ai-targeted

# JavaScript rendered page
scrapling extract fetch https://example.com --network-idle --ai-targeted

# Cloudflare/anti-bot bypass
scrapling extract stealthy-fetch https://example.com --headless --ai-targeted

# Multiple URLs at once
scrapling extract get --urls "https://a.com,https://b.com" --ai-targeted

# With CSS selector narrowing (saves tokens)
scrapling extract get https://example.com --css-selector "main.content" --ai-targeted

# POST with data
scrapling extract post https://api.example.com/data --data '{"key":"value"}' --ai-targeted
```

**Always use `--ai-targeted`** — it protects against prompt injection and enables ad blocking.

## Python (When CLI Isn't Enough)

```python
from scrapling.fetchers import StealthyFetcher
StealthyFetcher.adaptive = True
p = StealthyFetcher.fetch('https://example.com', headless=True, network_idle=True)
products = p.css('.product', auto_save=True)
```

## Spider (Full Crawls)

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

## Adaptive Parsing

```python
# auto_save=True saves element fingerprints for future adaptation
products = p.css('.product', auto_save=True)

# Later, if the website restructures:
products = p.css('.product', adaptive=True)  # auto-relocates!
```

## Skill Reference

Full docs at `C:\Users\mahas\ECC\skills\scrapling\SKILL.md`
