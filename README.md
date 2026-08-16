# quietdark.nvim

A native Neovim 0.12+ theme built from two visual directions:

- **OneDark Darker:** charcoal structure, restrained code semantics.
- **Soft plum terminal UI:** ink/plum surfaces, lavender chrome, pastel semantic accents.

The result intentionally avoids both pitch-black backgrounds and high-saturation "rainbow" syntax.

## Palette

| Role | Color |
| --- | --- |
| Main background | `#171923` |
| Deeper chrome | `#11131a` |
| Raised surface | `#1c1f2b` |
| Selection | `#30354b` |
| Border | `#2b3040` |
| Active border/accent | `#514b78` / `#aaa7e8` |
| Main text | `#c8cbe0` |
| Muted text | `#8c91aa` |
| Comment | `#727990` |
| Blue/function | `#7ea6e8` |
| Cyan/type | `#7fc0c4` |
| Green/string | `#8fc59b` |
| Purple/keyword | `#bd96d8` |
| Orange/number | `#e2a06f` |
| Yellow/warning | `#dcc184` |
| Pink/red/error | `#e67f99` |

## Install into the Neovim fork

Copy this package's `colors/` and `lua/` directories into Neovim's `runtime/`:

```text
runtime/
├── colors/quietdark.lua
└── lua/quietdark/
    ├── init.lua
    ├── palette.lua
    ├── appearance.lua
    ├── terminal.lua
    └── highlights/
```

Then load it:

```lua
vim.cmd.colorscheme('quietdark')
```

For the fork's early default layer, this can be the default while user `init.lua` remains free to select another colorscheme later.

## Standalone plugin usage

Put this repository on `runtimepath`, then:

```lua
require('quietdark').setup({
  appearance = true,
  dim_inactive = true,
  transparent = false,
})
vim.cmd.colorscheme('quietdark')
```

To use only the colors and leave borders/fillchars untouched:

```lua
require('quietdark').setup({ appearance = false })
vim.cmd.colorscheme('quietdark')
```

## Design choices

- Body text has high contrast against the main background while secondary UI is deliberately subdued.
- Variables mostly remain neutral; color is reserved for semantic categories.
- Keywords are purple + bold, so important syntax does not rely on color alone.
- Diagnostics use undercurls and low-saturation tinted virtual-text backgrounds.
- Native Neovim 0.12 completion groups (`PmenuMatch`, `PmenuKind`, `PmenuExtra`, `PmenuBorder`, etc.) are themed directly.
- LSP inlay hints, code lenses, semantic tokens, references, diagnostics and snippets are covered.
- Terminal ANSI 0-15 colors use the same palette.
- `appearance.lua` supplies rounded native borders and quiet separators to move the UI toward the reference mockup.

The working name **quietdark** is intentionally isolated to a few module/path names so it can be renamed once the fork has a product name.
