<h1 align="center">
  <br />
  SNMP Notifier
</h1>

<p align="center"><a href="https://github.com/sed-i/snmp-notifier-snap/actions/workflows/release-snap.yaml"><img src="https://github.com/sed-i/snmp-notifier-snap/actions/workflows/release-snap.yaml/badge.svg"></a></p>

<p align="center"><b>This is the snap for SNMP Notifier</b>, <i>“SNMP Notifier receives alerts from the Prometheus' Alertmanager and routes them as SNMP traps.”</i>. It works on Ubuntu, Fedora, Debian, and other major Linux
distributions.</p>

<p align="center"><a href="https://snapcraft.io/snmp-notifier"><img src="https://snapcraft.io/snmp-notifier/badge.svg" alt="snmp-notifier badge"/><a/></p>

<p align="center">Published for <img src="https://raw.githubusercontent.com/anythingcodes/slack-emoji-for-techies/gh-pages/emoji/tux.png" align="top" width="24" /> with 💝 by Snapcrafters</p>

## Install
### From source
```bash
snapcraft
sudo snap install --dangerous *.snap
```

Once installed, it runs as a service in the background.

<!-- Uncomment and modify this when your snap is available on the store
### From the snap store
```
sudo snap install snmp-notifier
```
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-white.svg)](https://snapcraft.io/snmp-notifier)
-->

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

## Configure

Snap config options match snmp_notifier cli arguments. Currently, supporting:

| `snmp_notifier` cli arg            | snap config option               |
|------------------------------------|----------------------------------|
| `--web.listen-address`             | `web.listen-address`             |
| `--snmp.destination`               | `snmp.destination`               |
| `--alert.severities`               | `alert.severities`               |
| `--snmp.trap-description-template` | `snmp.trap-description-template` |

You can configure the snap like so:

```bash
snap set snmp-notifier \
  web.listen-address=127.0.0.1:9464 \
  snmp.destination=127.0.0.1:162 \
  alert.severities="critical,warning,info"
```
