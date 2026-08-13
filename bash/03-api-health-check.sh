#!/usr/bin/env bash
set -u

url="${1:-https://httpbin.org/status/200}"
timeout_seconds="${TIMEOUT_SECONDS:-10}"

if ! command -v curl >/dev/null 2>&1; then
  echo "Error: curl is required" >&2
  exit 69
fi

response=$(curl -sS -o /dev/null -w '%{http_code} %{time_total}' --max-time "$timeout_seconds" "$url")
curl_exit=$?

if (( curl_exit != 0 )); then
  echo "CRITICAL url=$url curl_exit=$curl_exit" >&2
  exit 2
fi

status_code="${response%% *}"
response_time="${response#* }"

case "$status_code" in
  2??) state="OK"; exit_code=0 ;;
  3??) state="WARNING"; exit_code=1 ;;
  *)   state="CRITICAL"; exit_code=2 ;;
esac

echo "$state url=$url status=$status_code response_seconds=$response_time"
exit "$exit_code"
