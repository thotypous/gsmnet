FROM docker.io/ubuntu:18.04
ENV DEBIAN_FRONTEND="noninteractive" TZ="America/Sao_Paulo"
RUN apt-get update && apt-get install -y software-properties-common curl && \
    add-apt-repository -y ppa:gnuradio/gnuradio-releases-3.7 && \
    add-apt-repository -y ppa:myriadrf/drivers && \
    add-apt-repository -y ppa:myriadrf/gnuradio && \
    curl https://download.opensuse.org/repositories/network:/osmocom:/latest/xUbuntu_18.04/Release.key | apt-key add - && \
    echo "deb https://download.opensuse.org/repositories/network:/osmocom:/latest/xUbuntu_18.04/ ./" >/etc/apt/sources.list.d/osmocom-latest.list && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y osmocom-nitb osmo-trx-lms osmo-bts-trx limesuite tmux && \ 
    mkdir -p /work
WORKDIR /work
