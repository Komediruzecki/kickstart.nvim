-- lua/plugins/aerial.lua
return {
  'stevearc/aerial.nvim',
  event = 'VeryLazy',
  opts = {
    layout = {
      default_direction = 'right',
    },
    backends = { 'treesitter', 'lsp', 'markdown', 'asciidoc', 'man' },
    filter_kind = false,
  },
  keys = {
    {
      '<leader>ts',
      '<cmd>AerialToggle!<CR>',
      desc = 'Toggle Aerial (Symbol Outline)',
    },
  },
}
