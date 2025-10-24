#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh >/dev/null; then
  echo "gh CLI가 필요합니다: https://cli.github.com/"; exit 1
fi
if ! command -v git >/dev/null; then
  echo "git이 필요합니다."; exit 1
fi

GH_USER_DEFAULT=$(gh api user --jq .login 2>/dev/null || echo "")
read -rp "GitHub 사용자명 [${GH_USER_DEFAULT}]: " GH_USER
GH_USER=${GH_USER:-$GH_USER_DEFAULT}
read -rp "레포 이름 (예: sound-experiment-demo): " REPO
REPO=${REPO:-sound-experiment-demo}

git init
git add .
git commit -m "init: sound experiment demo" || true
git branch -M main

gh repo create "${GH_USER}/${REPO}" --public --source=. --remote=origin --push

echo
echo "✅ 레포: https://github.com/${GH_USER}/${REPO}"
echo "🌐 배포: https://${GH_USER}.github.io/${REPO}/"
