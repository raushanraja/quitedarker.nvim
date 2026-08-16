# quietdark.nvim

A native Neovim 0.12+ theme built around a dark charcoal/plum foundation,
restrained OneDark-like syntax semantics, and low-fatigue pastel accents.

## Variants

QuietDark now ships five palettes that share the same highlight system:

| Variant | Character |
| --- | --- |
| `quietdark` | Balanced charcoal/plum default |
| `quietdark-darker` | Near-black, highest-focus version |
| `quietdark-soft` | Lower saturation and gentler contrast |
| `quietdark-warm` | Warmer charcoal/plum, less blue cast |
| `quietdark-deep` | Strongest plum/lavender identity |

You can switch directly:

```vim
:colorscheme quietdark
:colorscheme quietdark-darker
:colorscheme quietdark-soft
:colorscheme quietdark-warm
:colorscheme quietdark-deep
```

Or keep the colorscheme name `quietdark` and choose the palette in setup:

```lua
require('quietdark').setup({
  style = 'soft',
  appearance = true,
  dim_inactive = true,
  transparent = false,
})

vim.cmd.colorscheme('quietdark')
```

## Native Neovim plugin manager (`vim.pack`)

Once this directory is a Git repository, Neovim 0.12 can install it natively:

```lua
vim.pack.add({
  'https://github.com/raushanraja/quitedarker.nvim',
})

vim.cmd.colorscheme('quietdark')
```

For local theme development, adding the working tree directly to runtimepath is
usually more convenient because edits are immediately visible:

```lua
vim.opt.rtp:prepend('/absolute/path/to/quietdark.nvim')
vim.cmd.colorscheme('quietdark')
```

## Configuration

```lua
require('quietdark').setup({
  style = 'quietdark', -- quietdark | darker | soft | warm | deep
  transparent = false,
  dim_inactive = true,
  terminal_colors = true,
  appearance = true,

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
})
```

`styles` controls code syntax typography. UI groups such as `StatusLine`,
`WinBar`, `LineNr`, `Pmenu`, `NormalFloat`, and diagnostics have their own
highlight definitions and are not changed by these syntax style settings.

## Appearance layer

When `appearance = true`, QuietDark also applies a small amount of Neovim 0.12
UI geometry:

- rounded `winborder` and `pumborder`
- quiet box-drawing split separators
- compact fold glyphs
- hidden end-of-buffer `~` markers
- matching diff filler

Set `appearance = false` if you only want the palette/highlights.

## Coverage

The shared highlight layer covers core editor UI, status/tab/win bars, gutters,
floats, completion (`Pmenu*`), search, diff, folds, diagnostics, LSP inlay hints
and code lenses, Tree-sitter captures, semantic-token overrides, snippets, and
terminal ANSI colors.
