#!/bin/bash
mkdir -p ../logs_raw_backup
mv ../logs/access.log ../logs_raw_backup/access.log.$(date +%Y-%m-%d-%s)
touch ../logs/access.log
docker exec nginx-proxy /util/send_reload_logs_signal.sh

