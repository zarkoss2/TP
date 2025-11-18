#!/usr/bin/env bash
set -e
# 0) INIT & HYGIÈNE (vous compléterez .gitignore selon vos outils)
git init -b main
printf "# NovaNotes+\n\n" > README.md
printf "## Journal des changements\n\n- v0.4 objectifs\n" > CHANGELOG.md
printf ".DS_Store\nnode_modules/\ndist/\n" > .gitignore
git add . && git commit -m "chore: init repo (README, CHANGELOG, .gitignore)"
# 1) BRANCHES DE TRAVAIL (pas de merge ici)
git switch -c feature/intro
echo "Intro & usage" >> README.md
git add README.md && git commit -m "docs: intro & usage"
git switch main
git switch -c feature/guide
echo "Guide v1" > GUIDE.md
git add GUIDE.md && git commit -m "docs: guide v1"
git switch main
echo "- planning FF/no-FF" >> CHANGELOG.md
git add CHANGELOG.md && git commit -m "docs: changelog planning v0.4"
# 2) AUTRES FICHIERS (pour vos essais de revert/reset/squash)
echo "v=1" > config.ini
git add config.ini && git commit -m "feat: base config"
touch NOTES.md
git add NOTES.md && git commit -m "chore: notes scaffold"
echo "Kit ULTRA léger prêt. À VOUS de :\n- créer 1 merge FF + 1 merge no-FF\npréparer 3 conflits (A–C)\n- faire amend / revert / reset (mixed)\n- stash + HEAD
détachée + branche de secours\n- squash + tag v0.4" >&2
