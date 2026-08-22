# Backup Tool

A Bash script that automatically backs up a folder with a timestamp, and cleans up old backups to keep only the 5 most recent.

## What it does
- Copies a target folder into ~/backups with a timestamped name
- Counts how many backups currently exist
- If more than 5 exist, automatically deletes the oldest ones, keeping only the 5 most recent

## How to use
1. Clone this repo
2. Run: `chmod +x backup-tool.sh`
3. Run: `./backup-tool.sh`
4. Check ~/backups to see the results

## What I learned
- Writing and calling functions in Bash: `function_name() { ... }`
- A real recurring bug: defining a function but forgetting to actually call it (hit this twice, caught it myself the second time)
- Formatting timestamps with `date +%Y-%m-%d_%H-%M-%S`
- Copying folders recursively with `cp -r`
- Counting and filtering files with `ls`, `wc -l`, `tail -n +6`, and `xargs rm -rf`
- Debugging a typo where -l (lowercase L) was misread as -1 (the number one)

## Why this matters
Automated backups with retention limits are a real pattern used in production systems (databases, servers, deployments) to avoid unlimited storage growth while keeping
