-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<C-A-o>'] = 'open_external',
        },
      },
      commands = {
        open_external = function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          if vim.fn.has 'mac' == 1 then
            vim.fn.jobstart({ 'open', path }, { detach = true })
          elseif vim.fn.has 'unix' == 1 then
            vim.fn.jobstart({ 'xdg-open', path }, { detach = true })
          elseif vim.fn.has 'win32' == 1 then
            vim.fn.jobstart({ 'start', path }, { detach = true })
          end
        end,
      },
    },
  },
}
