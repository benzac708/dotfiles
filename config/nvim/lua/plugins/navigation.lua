return {
  -- Harpoon: instant file switching (bookmark files, jump with Alt+1-4)
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon add",
      },
      {
        "<leader>h",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon menu",
      },
      {
        "<M-1>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon 1",
      },
      {
        "<M-2>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon 2",
      },
      {
        "<M-3>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon 3",
      },
      {
        "<M-4>",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon 4",
      },
    },
    config = true,
  },

  -- Tmux navigator: seamless pane switching between tmux and nvim
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Tmux left" },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Tmux down" },
      { "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Tmux up" },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Tmux right" },
    },
  },

  -- Oil: file manager that feels like a buffer
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "Open parent directory" },
    },
    opts = {
      view_options = { show_hidden = true },
      keymaps = {
        ["q"] = "actions.close",
      },
    },
  },
}
