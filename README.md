# thereforeWebsite

## `version.txt`

The app checks for updates by fetching `version.txt` — a plain-text file
holding the latest version, nothing else (e.g. `3.0.0`). It's read from the raw
repo on GitHub's CDN:

```
https://raw.githubusercontent.com/0lekW/thereforeWebsite/master/version.txt
```

On every release, bump it to the new version (and update the download link in
`index.html`). The bundle script writes a ready-to-copy `version.txt` next to
the installer (`../therefore/dist/<version>/version.txt`). If it's stale or
missing, the check simply finds nothing newer — it never nags wrongly.
