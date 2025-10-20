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
