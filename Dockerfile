FROM ghcr.io/linuxserver-labs/prarr:lidarr-plugins-2.12.0.4634

ARG LIDARR_VERSION

RUN \
    apk add --no-cache beets
ENV BEETSDIR="/config/beets" \
    HOME="/config/beets"

VOLUME /config/beets
EXPOSE 8686
