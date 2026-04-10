-- lua/plugins/rustaceanvim.lua
return {
  {
    'mrcjkb/rustaceanvim',
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = '^9',
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
    config = function()
      -- This global variable is how rustaceanvim is configured
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            -- 1. Code Action Mapping
            vim.keymap.set('n', '<leader>a', function() vim.cmd.RustLsp 'codeAction' end, { silent = true, buffer = bufnr, desc = 'Rust Code Action' })

            -- 2. Hover Actions Mapping
            vim.keymap.set('n', 'K', function() vim.cmd.RustLsp { 'hover', 'actions' } end, { silent = true, buffer = bufnr, desc = 'Rust Hover Actions' })
          end,
        },
      }
    end,
  },
}
