return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
    },
    ft = "python",                                                                                    -- Load when opening Python files
    config = function()
      require("venv-selector").setup({
        options = {},                                                                                 -- plugin-wide options
        search = {}                                                                                   -- custom search definitions
      })

      local function map(lhs, rhs, desc)
        vim.keymap.set('n', lhs, rhs, { desc = desc })
      end

      map(',v', '<cmd>VenvSelect<cr>', 'Seleccionar entorno virtual')
    end,
  }
}
