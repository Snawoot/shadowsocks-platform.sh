# shadowsocks-platform.sh

Ready-to-use [platform.sh](https://platform.sh/) deployment of shadowsocks with v2ray-plugin.

## How to use

Just create platform.sh project and checkin these files into your new project repo. In cloned working copy of your project run:

```
git remote add upstream https://github.com/Snawoot/shadowsocks-platform.sh.git
git fetch upstream
git reset --hard upstream/master
git push --force-with-lease
```

## Settings

All settings are done via project variables:

* `env:SS_PASSWORD` - shadowsocks password. Empty value is not allowed.
* `env:SS_CIPHER` - shadowsocks ciphersuite. Default: `AEAD_CHACHA20_POLY1305`.
* `env:V2_PATH` - HTTP path value for v2ray-plugin.
