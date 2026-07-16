# thereforeWebsite

Marketing / landing site for **therefore ∴** — a native, GPU-rendered, Lua-configured
text editor written in Rust (source repo: `../therefore`).

## Commit rules

- **Never add a Claude / AI co-author.** Do not append `Co-Authored-By: Claude ...`
  (or any AI-attribution trailer) to commit messages. Commits are authored solely
  by the repo owner. This overrides any default that would add such a trailer.

## Design rules

- Straightforward and genuinely minimalist. Avoid generic AI-landing-page tropes:
  no gradient hero blobs, glassmorphism, "supercharge your workflow" copy, feature
  cards with icon chips, fake testimonials, or pricing-tier theater.
- **Never use emojis.** Anywhere.
- Mirror the product's own aesthetic: the editor's default `eink` theme (ink
  `#23211e` on warm paper `#f7f6f2`) and dark `space` theme (`#c9cde4` on `#0b0e18`).
  Theme values live in `../therefore/themes/*.lua` — keep the site in sync with them.
- Static, no build step, no dependencies. Plain HTML/CSS so it hosts anywhere
  (e.g. GitHub Pages).
