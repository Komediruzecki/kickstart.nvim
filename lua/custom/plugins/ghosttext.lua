return {
  'wallpants/ghost-text.nvim',
  lazy = false,
  build = 'bun install',
  opts = {
    autostart = true,
    log_level = 'debug',
  },
}
