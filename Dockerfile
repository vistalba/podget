FROM debian:bookworm-slim
LABEL org.opencontainers.image.authors="vistalba"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qqy --no-install-recommends podget perl coreutils vim curl openssh-client locales ca-certificates wget && locale-gen de_CH.UTF-8 && apt-get autoremove -y && apt-get autoremove -y --purge && apt-get autoclean -y && rm -rf /var/cache/apt /var/cache/debconf/* /var/lib/apt/* /var/lib/dpkg/* /tmp/* /var/tmp/* /var/log/*

ENV LANG=de_CH.UTF-8
ENV LANGUAGE=de_CH:de
ENV LC_ALL=de_CH.UTF-8

ENTRYPOINT ["/usr/bin/podget"]
