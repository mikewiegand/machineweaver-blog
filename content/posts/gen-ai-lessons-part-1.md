---
title: "Gen AI Lessons Learned — Part 1"
date: 2025-10-21
tags: ["ai", "codegen", "workflow", "lessons"]
summary: "First batch of hard‑won truths from hands‑on GPT‑assisted development."
---

> _Don’t trust memory; trust artifacts._

This post captures the first slice of my recurring notes on running an AI‑assisted software workflow. It’s adapted from my internal checklist and battle logs.

## 1) Always Reload the Latest Code
Even though the model “remembers” context, its recall is **not** your filesystem.
**Rule:** before each session, paste or upload the *current* code/zip so suggestions apply to reality.

## 2) “Memory” ≠ Persisted State
Chat context is transient. Durable artifacts live in your repo (code, docs, manifests, data). Have the assistant generate *versioned, downloadable* files you then commit.

## 3) Round‑Trip Files
1. Upload your current zip or folder.
2. Let the assistant repair/regenerate a corrected archive.
3. Download, verify locally, then push.

## 4) Commit Everything Back to Git
Treat the assistant like a power tool in your dev loop: stage, diff, commit, push. Your repo stays the audit trail.

## 5) Past Lessons (Hard Ones)
- **HTML rendering:** prefer pure Markdown for docs.
- **Partial drops:** request **full file replacements**.
- **Path confusion:** confirm directories before replacing.
- **Reload races:** wait for “Application startup complete.”
- **Overwrites:** inspect new zips before unzipping into live trees.

_This is Part 1; future posts will go deeper into OTA flows, Streamlit admin ergonomics, and local LLM orchestration._
