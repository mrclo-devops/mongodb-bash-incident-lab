#!/usr/bin/env bash
set -u

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "$script_dir/.." && pwd)"
log_file="${1:-$repo_dir/logs/sample-application.log}"

echo "MongoDB & Bash Incident Lab"
echo "==========================="
echo

"$repo_dir/bash/02-log-analysis.sh" "$log_file"
analysis_exit=$?

if (( analysis_exit != 0 )); then
  echo "Analysis failed with exit code $analysis_exit" >&2
  exit "$analysis_exit"
fi

echo
echo "Next MongoDB exercises:"
echo "  mongosh < mongodb/01-crud.js"
echo "  mongosh < mongodb/03-aggregations.js"
echo "  mongosh < mongodb/04-indexes.js"
