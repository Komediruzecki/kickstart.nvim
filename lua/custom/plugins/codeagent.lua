return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'gemini',
      },
      inline = {
        adapter = 'gemini',
      },
      cmd = {
        adapter = 'gemini',
      },
    },
    adapters = {
      http = {
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            env = {
              api_key = os.getenv 'GEMINI_API_KEY',
            },
            schema = {
              model = {
                default = 'gemini-2.5-flash',
              },
            },
          })
        end,
      },
    },
    opts = {
      log_level = 'DEBUG',
    },
    ignore_warnings = true,
  },
}
