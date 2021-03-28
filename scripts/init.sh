#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

log "\e[36m--------- Project initialisation ---------\e[39m"

log "Creating symlink for .lando.base.yml in project root."
PROJECT_ROOT="$(get_project_root)"
ln -sf "$PROJECT_ROOT"/local/.lando.base.yml "$PROJECT_ROOT"/. || exit 1;

log "\e[36m--------- Project initialisation is finished ---------\e[39m"
