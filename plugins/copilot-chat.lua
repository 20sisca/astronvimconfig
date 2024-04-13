return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  dependencies = {
    { "github/copilot.vim" }, -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  },
  opts = {
    debug = true, -- Enable debugging
    prompts = {
      -- MyCustomPrompt = {
      --   prompt = "Explain how it works.",
      --   mapping = "<leader>pp",
      --   description = "My custom prompt description",
      --   selection = require("CopilotChat.select").visual,
      -- },
      Review = "Review the following code and provide concise suggestions.",
    },
    -- -- See Configuration section for rest
  },
  lazy = false,
  build = function()
    vim.notify "Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim."
  end,
  event = "VeryLazy",
  keys = {
    { "<leader>zb", ":CopilotChatBuffer ", desc = "CopilotChat - Chat with current buffer" },
    { "<leader>ze", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    { "<leader>zt", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    {
      "<leader>zT",
      "<cmd>CopilotChatVsplitToggle<cr>",
      desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
    },
    {
      "<leader>zv",
      ":CopilotChatVisual ",
      mode = "x",
      desc = "CopilotChat - Open in vertical split",
    },
    {
      "<leader>zx",
      ":CopilotChatInPlace<cr>",
      mode = "x",
      desc = "CopilotChat - Run in-place code",
    },
    {
      "<leader>zf",
      "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
      desc = "CopilotChat - Fix diagnostic",
    },
    {
      "<leader>zr",
      "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
      desc = "CopilotChat - Reset chat history and clear buffer",
    },
  },
  -- See Commands section for default commands if you want to lazy load on them
}
