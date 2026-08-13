# Bash Quick Reference

## Navigation and files

```bash
pwd
ls -lah
cd path/to/directory
mkdir -p output/reports
touch app.log
cp source destination
mv source destination
rm file
```

## Read and search

```bash
cat app.log
less app.log
head -n 20 app.log
tail -n 20 app.log
tail -f app.log
grep -in "error" app.log
find . -name "*.log"
```

## Pipes and redirection

```bash
grep "ERROR" app.log | wc -l
grep "ERROR" app.log | sort | uniq -c
command > output.txt
command >> output.txt
command 2> error.txt
```

## Processes, disk, and network

```bash
ps aux
top
df -h
du -sh .
curl -sS -I https://example.com
curl -sS https://example.com/api | jq .
```

## Script safety

```bash
#!/usr/bin/env bash
set -u

file="${1:-}"

if [[ -z "$file" || ! -f "$file" ]]; then
  echo "Usage: $0 <file>" >&2
  exit 1
fi
```

Always quote variables, check dependencies, write errors to stderr, and return meaningful exit codes.
