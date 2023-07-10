local function setUp()
  if vim.g.neovide then
    vim.g.neovide_cursor_vfx_mode = "wireframe"
    vim.api.nvim_set_var("neovide_refresh_rate", 75)
    vim.o.guifont = "Hack NFM:h12"
    vim.g.neovide_fullscreen = true
    vim.g.neovide_remember_window_size = true
  end
end

return {
  setUp(),
}
