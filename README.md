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
