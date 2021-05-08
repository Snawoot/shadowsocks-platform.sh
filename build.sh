#!/usr/bin/env bash

set -eu

echo "Downloading v2ray-plugin ${V2RAY_VERSION}"
wget --quiet -O- "https://github.com/shadowsocks/v2ray-plugin/releases/download/${V2RAY_VERSION}/v2ray-plugin-linux-amd64-${V2RAY_VERSION}.tar.gz" | tar zx
echo "Downloading go-shadowsocks2 ${GOSS_VERSION}"
wget --quiet -O- "https://github.com/shadowsocks/go-shadowsocks2/releases/download/${GOSS_VERSION}/shadowsocks2-linux.gz" | gunzip -c > go-shadowsocks2

mv v2ray-plugin_linux_amd64 v2ray-plugin
chmod +x start.sh v2ray-plugin go-shadowsocks2
