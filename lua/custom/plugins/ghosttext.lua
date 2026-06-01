return {
  'wallpants/ghost-text.nvim',
  lazy = false,
  build = 'bun install',
  opts = {
    autostart = false,
    log_level = 'debug',
  },
}
