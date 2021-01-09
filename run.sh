#!/bin/bash
device="$(lsusb | awk 'BEGIN{FPAT="[^ :]+"}/Myriad-RF LimeSDR/{print "/dev/bus/usb/"$2"/"$4}')"
exec podman run -it --rm \
    --network=host \
    --device="$device" \
    -v ./:/work \
    "$@" \
    quay.io/matiasp/gsmnet \
    tmux new-session osmo-trx-lms \; new-window osmo-nitb \; new-window 'sleep 5; exec osmo-bts-trx' \; attach
