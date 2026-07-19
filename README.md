# thereforeWebsite

The website for **therefore ∴** — a snappy, native, GPU-rendered text editor.

A single static `index.html` with no build step and no dependencies. Open it
directly, or serve the folder:

```sh
python -m http.server
```

The page mirrors the editor's own look: its default `eink` theme (ink on warm
paper) with a toggle to the dark `space` theme. Both palettes are lifted straight
from `../therefore/themes/*.lua`; if those change, update the CSS variables at the
top of `index.html` to match.

## `version.txt`

The app checks for updates by fetching `version.txt` from the site root — a
plain-text file holding the latest version, nothing else (e.g. `3.0.0`). On
every release, bump it to the new version along with the download link in
`index.html`. The bundle script writes a ready-to-copy `version.txt` next to the
installer (`../therefore/dist/<version>/version.txt`). If it's stale or missing,
the check simply finds nothing newer — it never nags wrongly.
