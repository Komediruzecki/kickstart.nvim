-- custom/autocmds.lua

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '.env.*' },
  callback = function()
    vim.bo.filetype = 'dotenv' -- or "dotenv" if you use a plugin/parser
  end,
})
