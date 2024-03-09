return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "jesseduffield/lazygit.nvim",
 -- Minimal configuration
{ "David-Kunz/gen.nvim", lazy=false },
{
    "gbprod/substitute.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
},
 {"github/copilot.vim", lazy=false},
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
