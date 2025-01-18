#!/usr/bin/with-contenv bashio
# ==============================================================================
# Configures GoAccess
# ==============================================================================

# shellcheck shell=bash

if [ ! -f /config/goaccess.conf ]; then
    bashio::log.info "No configuration file found, copying default one"
    cp /usr/goaccess/goaccess.default.conf /config/goaccess.conf
fi
