#!/bin/bash
set -xeuo pipefail
for pid in $(pidof osmo-trx-lms); do
    for task in $(ls -1 "/proc/${pid}/task"); do
        sudo chrt -p 18 "${task}"
    done
done
