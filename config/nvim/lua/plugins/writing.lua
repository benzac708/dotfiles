return {
  -- Zen mode: distraction-free writing
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>wz", "<cmd>ZenMode<CR>", desc = "Zen mode" },
    },
    opts = {
      window = {
        width = 80,
        options = {
          wrap = true,
          linebreak = true,
          number = false,
          relativenumber = false,
          signcolumn = "no",
        },
      },
      plugins = {
        tmux = { enabled = true },
        twilight = { enabled = true },
      },
    },
  },

  -- Twilight: dims inactive text (pairs with zen mode)
  {
    "folke/twilight.nvim",
    lazy = true,
    opts = {
      dimming = { alpha = 0.25 },
    },
  },

  -- Obsidian.nvim: native second-brain integration
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        { name = "second-brain", path = "~/Repos/second-brain" },
      },
      daily_notes = {
        folder = "daily",
        date_format = "%Y-%m-%d",
        template = nil,
      },
      completion = {
        nvim_cmp = false,
        min_chars = 2,
      },
      wiki_link_func = "use_alias_only",
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        ["<CR>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
      ui = {
        enable = true,
        checkboxes = {
          [" "] = { char = "☐", hl_group = "ObsidianTodo" },
          ["x"] = { char = "✅", hl_group = "ObsidianDone" },
          ["-"] = { char = "➖", hl_group = "ObsidianTilde" },
        },
      },
    },
    keys = {
      { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New note" },
      { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search notes" },
      { "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick switch" },
      { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
      { "<leader>od", "<cmd>ObsidianToday<CR>", desc = "Daily note" },
      { "<leader>ot", "<cmd>ObsidianTags<CR>", desc = "Tags" },
      { "<leader>ol", "<cmd>ObsidianLinks<CR>", desc = "Links" },
    },
  },

  -- Render markdown nicely in terminal
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  -- Smart bullet lists in markdown
  {
    "bullets-vim/bullets.vim",
    ft = "markdown",
  },
}
