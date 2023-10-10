return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "c_sharp", "org" },
  },
highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
      },
}
