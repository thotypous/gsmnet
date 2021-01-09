# gsmnet
Container for running [@racerxdl](https://github.com/racerxdl)'s [GSM network tutorial](https://lucasteske.dev/2019/12/creating-your-own-gsm-network-with-limesdr) on modern Linux

## How-to

Note: you may replace `podman` with `docker` in `run.sh` before running if you use Docker.

1. Run `./run.sh`. It will open a tmux.
2. Open 3 tabs (Ctrl+B C) on tmux. On each tab, run one of the following: `osmo-trx-lms`, `osmo-nitb`, and `osmo-bts-trx`.
3. **Outside** podman, run `./set-rt-prio.sh`.
