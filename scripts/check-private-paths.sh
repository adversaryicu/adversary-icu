#!/usr/bin/env bash
#
# Guard: block publication of the private research workspace, the local
# maintenance reference documents, and the local maintenance audit.
#
# Usage: scripts/check-private-paths.sh [ASSET_DIR]
#
#   ASSET_DIR  The directory that will actually be uploaded as static assets.
#              Defaults to ./public, the assets directory in wrangler.jsonc.
#
# Exits 0 when the asset directory is clean, 1 when protected material is
# present, 2 when the asset directory is missing. Only file paths are printed;
# file contents are never exposed in logs.
#
# Note: the filename sweep also fails on legitimate public pages that happen to
# use research-style filenames (for example a public article named
# "sources.md"). That is intentional: inspect the origin of any hit and, only
# if it is genuinely public content, adjust this script or rename the page.

set -euo pipefail

ASSET_DIR="${1:-./public}"

if [ ! -d "$ASSET_DIR" ]; then
  echo "ERROR: asset directory '${ASSET_DIR}' does not exist. Run the Hugo build first." >&2
  exit 2
fi

# Protected paths (relative to the asset directory).
PROTECTED_PATHS=(
  "research"
  "research/_template"
  "maintenance"
  "HUGO_MAINTENANCE_AUDIT.md"
  "research/_template/sources.md"
  "research/_template/research-brief.md"
  "research/_template/technical-analysis.md"
  "research/_template/evidence-matrix.md"
  "research/_template/fact-check.md"
  "research/_template/article-draft.md"
)

# Protected filenames anywhere in the asset directory.
PROTECTED_NAMES=(
  "sources.md"
  "research-brief.md"
  "technical-analysis.md"
  "evidence-matrix.md"
  "fact-check.md"
  "article-draft.md"
)

fail=0

for path in "${PROTECTED_PATHS[@]}"; do
  if [ -e "${ASSET_DIR}/${path}" ]; then
    echo "ERROR: protected path '${path}' found in '${ASSET_DIR}'." >&2
    fail=1
  fi
done

find_args=()
for name in "${PROTECTED_NAMES[@]}"; do
  find_args+=(-o -name "${name}")
done
# shellcheck disable=SC2068
while IFS= read -r -d '' hit; do
  echo "ERROR: research workspace filename '${hit}' found in '${ASSET_DIR}'." >&2
  fail=1
done < <(find "${ASSET_DIR}" -type f \( -false ${find_args[@]} \) -print0)

if [ "${fail}" -ne 0 ]; then
  {
    echo ""
    echo "FAILED: private research, maintenance, or audit material would be published."
    echo "These files must stay in /research/, /maintenance/, or at the repository"
    echo "root (HUGO_MAINTENANCE_AUDIT.md) — all git-ignored — and must never enter"
    echo "Hugo content, static directories, or the deployment asset directory."
    echo "Remove the files from the asset directory, then rebuild."
  } >&2
  exit 1
fi

echo "OK: no protected research or audit files in '${ASSET_DIR}'."
