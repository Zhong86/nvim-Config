return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin");
      vim.keymap.set('n', '<C-f>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
      vim.keymap.set('n', "<leader>b", builtin.buffers, {})
      vim.keymap.set('n', "<leader>v", builtin.lsp_document_symbols, {})
      vim.keymap.set('n', "<leader>m", builtin.marks, {})
      vim.keymap.set('n', "<C-w><C-r>", builtin.colorscheme, {})
    end

  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {

            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
