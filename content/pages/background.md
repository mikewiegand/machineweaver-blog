---
title: "Background & Methodology"
url: "/background/"
type: "page"
---

This page explains the scope of my ongoing experiments and how results are produced.

## What This Project Is
- A public log of building with **AI‑assisted engineering**: code generation, refactoring, and doc automation.
- A record of my **ESP32 OTA (OTAJet)** and **PackWeave** work, plus a minimal Hugo blog used to publish findings.

## What’s Coded vs. Not
- **Coded:** working Python/FastAPI services, Streamlit admin UIs, MicroPython clients for ESP32, packaging scripts, and tangible artifacts (zips, markdown, diagrams).
- **Not (yet):** production‑grade cryptographic signing pipelines and some long‑haul observability pieces. When placeholders exist, the posts call them out explicitly.

## How Experiments Are Run
1. **Prepare artifacts** in a local Git repo (code, data, manifests).
2. **Round‑trip with the assistant:** upload → regenerate → download.
3. **Verify locally** (lint, run, or static checks) and **commit**.
4. **Document** the outcome in a post with reproducible steps and downloadable files.

## Reproducibility Policy
- Every meaningful output is saved under version control.
- Posts link to **downloadable** artifacts (zips, scripts).
- When environment or secrets are required, I include redacted examples and local‑only substitutes.

## How to Read Results
- Posts emphasize **process and artifacts** over anecdotes.
- When a conclusion depends on toolchain versions or OS quirks, I pin versions and note the environment.

Have questions? Open a Discussion on the repo and tag it with **Blog Comments**.
