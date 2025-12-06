# MachineWeaver — Notes from a Generative Engineer

This is the public repo for my personal techno blog.

- **Site title:** MachineWeaver  
- **Tagline:** Notes from a Generative Engineer.  
- **Repo:** `machineweaver-blog`

## What’s inside
- Minimal Hugo static site.
- GitHub Discussions comments via **giscus**.
- GitHub Pages deployment via **Actions** to `gh-pages`.
- SEO partials (Open Graph/Twitter meta) prewired.
- Posts in Markdown under `content/posts/`.

## Unified Decision Log Specification (UDLS)

I maintain the **Unified Decision Log Specification (UDLS)** as an open, versioned standard for governance‑aligned decision logging across IoT devices, ESP32 fleets, autonomous agents, and offline‑first systems.

UDLS defines a deterministic, replayable log format that captures:

- intents and actions  
- rationales and inputs  
- timestamp trust levels (NTP, RTC, gateway)  
- drift, model lineage, and evaluation telemetry  
- IoT‑safe, low‑overhead JSONL encoding  
- full offline and holdover operation  

📘 **Spec Repo:**  
https://github.com/mikewiegand/unified-decision-log

UDLS is part of the larger MachineWeaver ecosystem of specifications, designs, and local-first agent governance tools.

## 1) Create the public repo
Create a new repo on GitHub named **machineweaver-blog** and push this tree.

## 2) Enable GitHub Discussions
Repo → Settings → Features → **Enable Discussions**.  
Create a **Category** named **Blog Comments** (or any name you prefer).

## 3) Configure giscus
Visit https://giscus.app/ and select your repo. Pick the **Discussions category** you created.  
Copy the generated values:

- `data-repo`  
- `data-repo-id`  
- `data-category`  
- `data-category-id`

Paste them into `layouts/partials/giscus.html`.

## 4) Configure the site
Edit **config.toml**:

- `baseURL = "https://<yourname>.github.io/machineweaver-blog/"`  
- Set your name, social links, etc.  
- `enableRobotsTXT = true` is already set.

## 5) Deploy with GitHub Pages (automatic)
- Push to `main`.  
- Actions will build Hugo and publish to `gh-pages`.  
- In **Settings → Pages**, set Source = `Deploy from a branch` and Branch = `gh-pages`.

## 6) SEO (prewired)
- Open Graph + Twitter meta via `layouts/partials/head-seo.html`.  
- Robots.txt + sitemap auto-created by Hugo.  
- Add Google Search Console verification meta when ready.

## 7) Write posts
Add Markdown files to `content/posts/`:

```md
---
title: "My First Post"
date: 2025-10-20
tags: ["ai", "codegen", "esp32"]
summary: "What this post covers."
---
```

## 8) Local preview (optional)

```bash
hugo server -D
```

---

# 🤖 Gen AI Lessons Learned

> _Hard-won truths from working hands-on with GPT‑assisted development._

### 🌀 1. Always Reload the Latest Code
Even though the model “remembers” context, its recall is session-scoped—not your filesystem.

### 🧠 2. “Memory” ≠ Persisted State
GPT’s conversational state is contextual, not persistent.  
Treat every durable artifact as a _source of truth_.

### 📦 3. Round-Trip Files, Don’t Rely on Chat Logs
Upload → regenerate → download → verify → commit.

### 🔁 4. Commit Everything Back to Git
Treat GPT as part of your development workflow: diff, commit, verify.

### 🧩 5. Past Lessons (Hard Ones)
- Stick with pure Markdown for docs  
- Always request *full replacements* of files  
- Confirm paths before applying changes  
- Avoid partial overwrites

---

_Last updated by GPT‑5 — 2025‑12‑06_
