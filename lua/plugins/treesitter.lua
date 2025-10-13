return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate", 
  config = function() 
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "php", "html", "css", "c"  },
      highlight = {enable = true},
      indent = {
        enable = true, 
        disable = {"lua", "css"}
      },
    })
  end
}
