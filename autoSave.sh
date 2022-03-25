#!/bin/bash
# minute hour day_of_month month day_of_week command
# */10 * * * * /Users/hsulala/Documents/cron/logseqAutoSave.sh > ~/logseq_autosave_log.txt 2>&1 &

# cd /Volumes/GoogleDrive/My\ Drive/logseq

git pull
git add .
git commit -m "auto save"
git push -u origin main