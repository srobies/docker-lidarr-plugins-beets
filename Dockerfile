FROM ghcr.io/linuxserver-labs/prarr:lidarr-plugins-2.12.0.4634

ARG LIDARR_VERSION

RUN \
    apk add --no-cache python3 jpeg \
    pip install -U --no-cache-dir --find-links https://wheel-index.linuxserver.io/alpine-3.21/ \
    beets \
    rm -rf \
        /tmp/* \
        $HOME/.cache \
        $HOME/.cargo
    ENV BEETSDIR="/config/beets" \
              HOME="/config/beets"

VOLUME /config/beets
EXPOSE 8686
