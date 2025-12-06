---
title: "Introducing UDLS: Unified Decision Log Specification"
date: 2025-12-06
tags: ["udls", "logging", "iot", "esp32", "agents", "governance"]
summary: "UDLS (Unified Decision Log Specification) is my open standard for deterministic, governance-aligned decision logging across IoT devices, ESP32 fleets, and autonomous agents."
---

If you’ve ever tried to debug an autonomous system days or weeks after it misbehaved,
you’ve probably hit the limits of traditional logs.

Most logs tell you **what happened**.  
They rarely tell you:

- what the system *intended* to do  
- why it chose a specific action  
- which model version made the call  
- how clock drift or bad sensors influenced the outcome  

That’s why I created **UDLS — the Unified Decision Log Specification**.

---

## What is UDLS?

UDLS is a lightweight, replayable, governance-aligned decision logging standard designed for:

- IoT and ESP32-class devices  
- offline-first clusters  
- autonomous agents and orchestration systems  

Instead of just appending free-form log messages, UDLS captures:

- **intent** – what the system was trying to achieve  
- **action** – what it actually did  
- **rationale** – why it chose that action  
- **inputs & context** – the evidence it used  
- **result** – outcome of the decision  
- **model lineage & drift** – which model, what drift, what evals  
- **timestamp trust** – whether time came from NTP, gateway, RTC, or is unknown  

The goal is simple:  
> Make it possible to **replay** decisions deterministically and audit them later.

---

## Where is the spec?

The living spec and reference materials live here:

👉 **Unified Decision Log Specification (UDLS) repo**  
https://github.com/mikewiegand/unified-decision-log

The repo contains:

- the human-readable spec (`UDLS-Spec-v4.md`)  
- a developer-friendly `README.md`  
- examples of MCU-friendly JSONL decision records  

---

## Why it matters

UDLS is part of a larger effort I call **MachineWeaver** — building
local-first, spec-driven infrastructure where:

- models and agents don’t get to “hand-wave” their decisions  
- every important action has a rationale, inputs, and lineage  
- IoT fleets can operate offline without losing governance trail  

If you’re interested in IoT, ESP32, agent systems, or model governance,  
you can follow along here on the blog and in the UDLS repo.
