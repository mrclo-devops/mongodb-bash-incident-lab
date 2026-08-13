#!/usr/bin/env bash
set -u

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "$script_dir/.." && pwd)"

echo "Repository: $repo_dir"
echo
echo "Directories:"
find "$repo_dir" -maxdepth 1 -type d -print
echo
echo "Learning files:"
find "$repo_dir" -type f \( -name "*.sh" -o -name "*.js" -o -name "*.md" \) -print
