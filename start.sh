#!/usr/bin/env bash

[[ "$SS_PASSWORD" ]] || {
	2>&1 echo "Empty shadowsocks password! Please set SS_PASSWORD environment variable."
	sleep infinity
}

./go-shadowsocks2 \
	-s "ss://AEAD_CHACHA20_POLY1305:${SS_PASSWORD}@:${PORT}" \
	-verbose \
	-plugin v2ray-plugin \
	-plugin-opts "server;path=${V2_PATH:-/v2}"
