return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "jesseduffield/lazygit.nvim",
  -- Minimal configuration
  { "David-Kunz/gen.nvim", lazy = false },
  { "tpope/vim-fugitive", lazy = false },
  {
    "gbprod/substitute.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function() require("copilot").setup {} end,
  },
  {
    "github/copilot.vim",
    -- cmd = "Copilot",
    -- event = "InsertEnter",
    -- config = function() require("copilot").setup {} end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function() require("copilot_cmp").setup() end,
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true, lazy = false },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
