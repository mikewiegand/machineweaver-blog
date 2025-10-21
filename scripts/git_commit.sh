#!/usr/bin/env bash
set -euo pipefail

MSG=${1:-"Update MachineWeaver site content"}
REPO=${2:-"~/dev/machineweaver-blog"}

if [ ! -d "$REPO/.git" ]; then
  echo "❌ $REPO is not a git repo."
  exit 1
fi

cd "$REPO"

if git diff --quiet && git diff --cached --quiet; then
  echo "✅ No changes to commit."
  exit 0
fi

echo "🪶 Staging changes..."
git add -A

echo "📝 Committing with message: $MSG"
git commit -m "$MSG"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Done."
