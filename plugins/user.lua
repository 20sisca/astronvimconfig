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
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- prompts = {
      --   MyCustomPrompt = {
      --     prompt = "Explain how it works.",
      --     mapping = "<leader>pp",
      --     description = "My custom prompt description",
      --     -- selection = require("CopilotChat.select").visual,
      --   },
      -- },
      -- -- See Configuration section for rest
    },
    lazy = false,
    -- See Commands section for default commands if you want to lazy load on them
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
