#!/bin/bash
mv ../logs/access.log ../logs/access.log.$(date +%Y-%m-%d-%s)
touch ../logs/access.log
docker exec nginx-proxy /util/send_reload_logs_signal.sh

