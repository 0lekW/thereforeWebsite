-- therefore ∴ — full config reference
--
-- Every option, every keybind, and a complete theme, all in one place.
-- Saving your init.lua applies it immediately — no restart.
--
-- Everything here is OPTIONAL. Delete a line to get its default back, or
-- delete the whole table for a stock therefore. Open your own config with the
-- ∴ button (top-right); it lives at:
--   Windows  %APPDATA%\therefore\init.lua
--   Linux    ~/.config/therefore/init.lua
--   macOS    ~/Library/Application Support/therefore/init.lua

return {

  ---------------------------------------------------------------------------
  -- Appearance
  ---------------------------------------------------------------------------

  theme      = "eink",          -- eink (light), space, forest, deep_ocean,
                                -- mars, a theme table (see the bottom), or
                                -- require("mytheme") for your own .lua file

  -- font    = "Cascadia Code", -- editor font by family name; default is the
                                -- bundled JetBrains Mono
  -- ui_font = "Cascadia Code", -- tree / tabs / status / menus font

  font_size   = 15,
  line_height = 22,             -- editor line height in px; default is font_size × 1.47
  line_numbers = true,          -- show the gutter

  ---------------------------------------------------------------------------
  -- Editing
  ---------------------------------------------------------------------------

  tab_width = 4,                -- indentation width, in spaces
  find_case = "smart",          -- "smart" (insensitive until you type a capital),
                                -- "sensitive", or "insensitive"

  undo_break_newline = true,    -- Enter starts a new undo group
  -- undo_timeout_ms  = 400,    -- pausing this long starts a new undo group

  ---------------------------------------------------------------------------
  -- Cursor
  ---------------------------------------------------------------------------

  cursor_blink    = true,       -- false = solid caret
  cursor_blink_ms = 530,        -- blink half-period

  ---------------------------------------------------------------------------
  -- Zoom
  ---------------------------------------------------------------------------

  zoom      = 1.0,              -- initial zoom, if there's no saved session
  zoom_step = 0.1,             -- per Ctrl+wheel notch

  ---------------------------------------------------------------------------
  -- Layout
  ---------------------------------------------------------------------------

  tree_width      = 220,        -- file-tree width in px (a dragged width wins)
  tab_bar_width   = 150,        -- width of each tab, px
  tab_bar_height  = 30,         -- height of the tab bar, px
  terminal_height = 220,        -- terminal panel height in px (draggable)

  ---------------------------------------------------------------------------
  -- Behaviour
  ---------------------------------------------------------------------------

  -- terminal_shell = "pwsh",   -- program for the terminal; default is the OS
                                -- shell (cmd.exe on Windows, $SHELL elsewhere)

  md_view                  = "edit",   -- default view for .md: "edit" or "preview"
  native_file_dialog       = false,    -- true = OS folder picker (local only)
  animations               = true,     -- picker entrance, tab-reorder slide
  tab_reorder              = true,     -- drag tabs to reorder
  git_history_all_branches = true,     -- false = current branch only

  ---------------------------------------------------------------------------
  -- Keybindings — override any subset; the rest keep their defaults
  ---------------------------------------------------------------------------

  keys = {
    save           = "ctrl+s",
    close_tab      = "ctrl+w",
    select_all     = "ctrl+a",
    copy           = "ctrl+c",
    cut            = "ctrl+x",
    paste          = "ctrl+v",
    undo           = "ctrl+z",
    redo           = "ctrl+y",
    open_folder    = "ctrl+o",        -- re-root the tree (or connect over SSH)
    open_remote    = "ctrl+shift+o",  -- SSH: user@host[:/path]
    toggle_preview = "ctrl+e",        -- markdown edit <-> preview
    find           = "ctrl+f",
    replace        = "ctrl+h",        -- macOS default: cmd+alt+f
    goto_line      = "ctrl+g",
    toggle_git     = "ctrl+shift+g",  -- the git window
    toggle_terminal = "ctrl+`",       -- the terminal panel
  },

  ---------------------------------------------------------------------------
  -- A custom theme (optional).
  --
  -- `base` picks a bundled theme to start from; override only what you want
  -- and the rest is inherited. Colours are "#rrggbb" or "#rgb". To use this,
  -- set theme = { ... } above to a table like this one.
  ---------------------------------------------------------------------------

  -- theme = {
  --   name = "midnight",
  --   base = "space",
  --
  --   -- Base surfaces and text
  --   bg = "#0f1115", fg = "#d6d9df", sel = "#2a3350",
  --   dim = "#6b7290", panel = "#141824",
  --   cur_line = "#171b28",
  --
  --   -- Window border; border_width = 0 hides it
  --   border = "#2a3150", border_width = 1,
  --
  --   -- Syntax palette
  --   keyword = "#8fa3ff", ["function"] = "#7fd6c2", type = "#e6c07b",
  --   string  = "#98c379", comment = "#5c6370", number = "#d19a66",
  --
  --   -- Editor gutter change bars
  --   git_added = "#98c379", git_modified = "#e6c07b", git_removed = "#e06c75",
  --   git_bar_width = 2, git_bar_opacity = 0.9,
  --
  --   -- Git window: HEAD marker, toolbar count badges
  --   head_dot = "#8fa3ff", git_badge = "#e06c75",
  --
  --   -- Git window: File Status diff
  --   diff_add = "#1e2d1e", diff_removed = "#2d1e1e", diff_hunk = "#2a3350",
  --   conflict = "#e5a04a",   -- conflicted files during a merge
  --
  --   -- Commit graph
  --   graph_colors = { "#8fa3ff", "#7fd6c2", "#e6c07b", "#e06c75", "#c678dd" },
  --   graph_lane_width = 14, graph_line_width = 2, graph_node_scale = 1.0,
  --
  --   -- Terminal: the 16 base ANSI colours (all 16 or none). Order is
  --   -- black, red, green, yellow, blue, magenta, cyan, white, then bright.
  --   ansi = {
  --     "#0b0e18", "#e06c75", "#98c379", "#e6c07b",
  --     "#61afef", "#c678dd", "#56b6c2", "#c9cde4",
  --     "#3a4260", "#ff7b86", "#b6e3a0", "#ffd699",
  --     "#82c4ff", "#df9bf0", "#7fe0ec", "#ffffff",
  --   },
  -- },

}
