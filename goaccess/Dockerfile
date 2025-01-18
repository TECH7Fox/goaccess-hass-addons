FROM ghcr.io/hassio-addons/debian-base:7.3.4 AS base

SHELL [ "/bin/bash", "-euxo", "pipefail", "-c" ]

RUN apt-get update && apt-get install -y --no-install-recommends \
    nginx \
    libgeoip-dev \
    wget \
    gpg \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -qO - https://deb.goaccess.io/gnugpg.key | gpg --dearmor | tee /usr/share/keyrings/goaccess.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/goaccess.gpg arch=$(dpkg --print-architecture)] https://deb.goaccess.io/ bookworm main" | tee /etc/apt/sources.list.d/goaccess.list \
    && apt-get update && apt-get install -y --no-install-recommends goaccess \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY rootfs /

RUN wget -qO dbip-country-lite-2025-01.mmdb.gz https://download.db-ip.com/free/dbip-country-lite-2025-01.mmdb.gz \
    && gunzip dbip-country-lite-2025-01.mmdb.gz \
    && mv dbip-country-lite-2025-01.mmdb /usr/dbip/dbip-country.mmdb

RUN wget -qO dbip-city-lite-2025-01.mmdb.gz https://download.db-ip.com/free/dbip-city-lite-2025-01.mmdb.gz \
    && gunzip dbip-city-lite-2025-01.mmdb.gz \
    && mv dbip-city-lite-2025-01.mmdb /usr/dbip/dbip-city.mmdb

RUN wget -qO dbip-asn-lite-2025-01.mmdb.gz https://download.db-ip.com/free/dbip-asn-lite-2025-01.mmdb.gz \
    && gunzip dbip-asn-lite-2025-01.mmdb.gz \
    && mv dbip-asn-lite-2025-01.mmdb /usr/dbip/dbip-asn.mmdb
