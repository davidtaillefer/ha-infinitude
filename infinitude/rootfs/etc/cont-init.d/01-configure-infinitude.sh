#!/usr/bin/with-contenv bashio

export APP_SECRET=$(bashio::config 'app_secret')
export PASS_REQS=$(bashio::config 'pass_reqs')
export MODE=$(bashio::config 'mode')

bashio::log.info "Configuring Infinitude"