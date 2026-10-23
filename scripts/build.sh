#!/usr/bin/env bash
#
# Production build wrapper for Adversary ICU.
#
# Runs the Hugo production build and then the private-material guard so a
# deployment can never include /research/ or HUGO_MAINTENANCE_AUDIT.md.
#
# Usable as the Cloudflare Workers build command:
#   ./scripts/build.sh
#
# HUGO_BIN can override the Hugo executable for local testing.

set -euo pipefail
cd "$(dirname "$0")/.."

HUGO_BIN="${HUGO_BIN:-hugo}"

"$HUGO_BIN" --gc --minify --cleanDestinationDir
scripts/check-private-paths.sh ./public
