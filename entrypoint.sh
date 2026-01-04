#!/bin/bash
set -e

rm -f /service/tmp/pids/server.pid

exec "$@"