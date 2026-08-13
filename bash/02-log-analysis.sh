#!/usr/bin/env bash
set -u

log_file="${1:-}"

if [[ -z "$log_file" ]]; then
  echo "Usage: $0 <log-file>" >&2
  exit 64
fi

if [[ ! -f "$log_file" ]]; then
  echo "Error: file not found: $log_file" >&2
  exit 66
fi

total_lines=$(wc -l < "$log_file" | tr -d ' ')
error_count=$(grep -c " ERROR " "$log_file" || true)
warning_count=$(grep -c " WARN " "$log_file" || true)
timeout_count=$(grep -ic "timeout" "$log_file" || true)
auth_count=$(grep -Eic "OAuth|authentication|invalid.*token" "$log_file" || true)

echo "Incident Analysis Report"
echo "------------------------"
echo "File: $log_file"
echo "Total records: $total_lines"
echo "Errors: $error_count"
echo "Warnings: $warning_count"
echo "Timeouts: $timeout_count"
echo "Authentication failures: $auth_count"
echo
echo "Errors by service:"
awk '/ ERROR / {
  for (i = 1; i <= NF; i++) {
    if ($i ~ /^service=/) {
      split($i, pair, "=")
      count[pair[2]]++
    }
  }
}
END {
  for (service in count) {
    print count[service], service
  }
}' "$log_file" | sort -rn
