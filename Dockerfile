FROM ghcr.io/linuxserver-labs/prarr:lidarr-plugins-2.13.2.4686

ARG LIDARR_VERSION

RUN \
    apk add --no-cache beets \
    py3-pyacoustid \
    py3-pylast \
    ffmpeg
ENV BEETSDIR="/config/beets" \
    HOME="/config/beets"

VOLUME /config/beets
EXPOSE 8686
