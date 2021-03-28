#!/usr/bin/env bash
source "$(dirname "$0")/common.sh"

log "\e[36m--------- Cleaning downloaded and built resources ---------\e[39m"

log "Go to the project root."
PROJECT_ROOT="$(get_project_root)"
cd "${PROJECT_ROOT}" || exit 1;

TODELETE=("vendor" "web/core" "web/modules/contrib")
for i in "${TODELETE[@]}"
do
  log "Deleting $i"
	rm -rf "$i" || exit 1;
	log "$i is deleted"
done

log "\e[36m--------- Finished cleaning downloaded and built resources ---------\e[39m"
