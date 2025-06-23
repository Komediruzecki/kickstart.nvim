-- lua/plugins/noice.lua
return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        lsp = {
          signature = { enabled = true },
          hover = { enabled = true },
        },
        presets = {
          bottom_search = true, -- use a classic bottom command line for search
          command_palette = true, -- position the command line and popup together
          long_message_to_split = true, -- long messages go to split
          inc_rename = false, -- enables input dialog for :IncRename
          lsp_doc_border = true, -- add border to hover/signature
        },
      }

      -- Optional: Set nvim-notify as the default notification handler
      vim.notify = require 'notify'
    end,
  },
}
