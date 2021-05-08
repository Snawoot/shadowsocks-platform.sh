#!/usr/bin/env bash

./go-shadowsocks2 \
	-s "ss://AEAD_CHACHA20_POLY1305:${SS_PASSWORD}@:${PORT}" \
	-verbose \
	-plugin v2ray-plugin \
	-plugin-opts 'server;path=${V2_PATH:-/v2}'
