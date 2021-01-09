# gsmnet
Container for running [@racerxdl](https://github.com/racerxdl)'s [tutorial](https://lucasteske.dev/2019/12/creating-your-own-gsm-network-with-limesdr) on modern Linux

## How-to

1. Run `./run.sh`. It will open a tmux.
2. Open 3 tabs (Ctrl+B C) on tmux. On each tab, run one of the following: `osmo-trx-lms`, `osmo-nitb`, and `osmo-bts-trx`.
3. **Outside** podman, run `./set-rt-prio.sh`.
