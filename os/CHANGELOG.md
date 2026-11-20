# Newsk OS Changelog

## Unreleased
- Backfill remaining 8 country wallpapers (Wikimedia rate limits).

## Unreleased
- Three packages: Edge (bare headless), Lite (AI optional at first boot), Full (desktop).

## 0.1.0 — Flavor split + theming
- Newsk base image (`os/base.yaml`): wolfi-base, Newsk key, OCI annotations.
- Lite profile (`os/lite.yaml`): headless scraper + MiniLM embeddings + pglite.
- Full profile (`os/full.yaml`): Openbox desktop + EmDash + Harper + scraper.
- System accent color (`os/theme/`): blue/green/amber/red/purple; `newsk-accent`
  rewrites Openbox, GTK, Xresources and swaps the wallpaper variant.
- Wallpaper packs (`os/full/wallpapers/packs.json`): 7 countries so far, each with
  original + pixel + 5 accent variants, per-file artist/license credits.
- Pi provision bundle (`os/pi/`): locked-down podman (registries, 8 GB overlay cap),
  Newsk systemd service with memory/CPU limits.
- Dropped JWM packaging (no Wolfi packages); LXQt unavailable in Wolfi, Full stays Openbox.
- Base image verified booting at 114 MB with Newsk ASCII boot art.
