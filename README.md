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

## 1) Create the public repo
Create a new repo on GitHub named **machineweaver-blog** and push this tree.

## 2) Enable GitHub Discussions
Repo → Settings → Features → **Enable Discussions**.
Create a **Category** named **Blog Comments** (or any name you prefer).

## 3) Configure giscus
Visit https://giscus.app/ and select your repo. Pick the **Discussions category** you created.
Copy the generated values:
- `data-repo` (e.g., `yourname/machineweaver-blog`)
- `data-repo-id` (opaque ID)
- `data-category` (e.g., `Blog Comments`)
- `data-category-id` (opaque ID)

Paste them into `layouts/partials/giscus.html` (search for TODO lines).

## 4) Configure the site
Edit **config.toml**:
- `baseURL = "https://<yourname>.github.io/machineweaver-blog/"` (or your custom domain)
- Set your name, social links, etc.
- `enableRobotsTXT = true` is already set.

## 5) Deploy with GitHub Pages (automatic)
- Push to `main`.
- Actions will build Hugo and publish to `gh-pages`.
- In **Settings → Pages**, set Source = `Deploy from a branch` and Branch = `gh-pages`.

## 6) SEO (prewired)
- Open Graph + Twitter meta via `layouts/partials/head-seo.html` and included in `baseof.html`.
- Sitemap & robots via Hugo (robots enabled; sitemap auto-exposed).
- For Google Search Console, add the meta tag to `head-seo.html` when you verify.

## 7) Write posts
Add Markdown files to `content/posts/` with front matter:
```md
---
title: "My First Post"
date: 2025-10-20
tags: ["ai", "codegen", "esp32"]
summary: "What this post covers."
---
```

## 8) Local preview (optional)
If you have Hugo installed:
```bash
hugo server -D
```

---

# 🤖 Gen AI Lessons Learned

> _Hard-won truths from working hands-on with GPT-assisted development._

---

### 🌀 1. Always Reload the Latest Code
Even though the model “remembers” context, its recall is session-scoped—not your filesystem.  
**Rule:** before resuming a session, reload or paste the latest code so the assistant operates on the true current state.

---

### 🧠 2. “Memory” ≠ Persisted State
GPT’s conversational state is contextual, not persistent.  
**Best practice:** treat every durable artifact as a _source of truth_—docs, code, manifests, and data must live in your repo.  
Have GPT generate versioned, downloadable files (`.md`, `.py`, `.zip`) that you keep locally and re-upload when needed.

---

### 📦 3. Round-Trip Files, Don’t Rely on Chat Logs
When iterating on code:
1. **Upload** your current zip or source folder.  
2. **Let GPT parse, repair, and regenerate** a corrected archive.  
3. **Download and verify** locally before pushing.  

This guarantees the conversation reflects exact compute outputs rather than an old text snapshot.

---

### 🔁 4. Commit Everything Back to Git
Treat GPT as an extension of your development workflow:
- Reintegrate the regenerated files into your local Git repo.  
- Stage, diff, and commit so the history shows each AI-assisted revision.  
- Push upstream once verified—your repo remains the ultimate audit trail.

---

### 🧩 5. Past Lessons (Hard Ones)
- ⚠️ **HTML rendering:** GPT can mix markdown/HTML. Stick with pure Markdown for docs—rendering stays portable.  
- ⚙️ **Partial file drops:** Always request *full replacements* of files, not snippets, to avoid drift.  
- 🧮 **Path confusion:** Confirm directory levels (`app/core/config.py` vs `core/config.py`) before replacing.  
- 🧰 **Reload races:** When FastAPI reloads after edits, wait for “Application startup complete.” before hitting endpoints.  
- 🧑‍💻 **Overwrites:** When regenerating zips, inspect the new one before unzipping into an existing project—prevent accidental clobbers.

---

### ✅ TL;DR
> **Don’t trust memory; trust artifacts.**  
> Persist every meaningful output—code, docs, zips—under version control, and your AI-assisted workflow will stay consistent, reproducible, and safe.

---

_Last updated by GPT‑5 — 2025‑10‑19_