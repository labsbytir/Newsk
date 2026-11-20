# Newsk OS flavor

Newsk is a custom Wolfi-based OS flavor for tir labs appliances.
Base: `wolfi-base` + `ca-certificates-bundle`, re-signed under the Newsk key.

- `newsk.rsa.pub` — distro signing key (public). Private `newsk.rsa` never leaves the build host.
- `base.yaml` — apko config for the `newsk` base image.

Build it:

```sh
apko build os/base.yaml newsk:latest newsk-base.tar \
  --arch x86_64,aarch64
```
