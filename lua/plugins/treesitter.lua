local languages = {
  "lua", "php",
  "html", "css", "javascript", "json",
  "c"
};

return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = languages,
      highlight = {enable = true},
      indent = {
        enable = true,
      },
    })
  end
}
