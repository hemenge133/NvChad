local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "MunifTanjim/nui.nvim"
  },
  {
    "MaximilianLloyd/ascii.nvim",
    requires = {
      "MunifTanjim/nui.nvim"
    }
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
          ---@class Shortcut
          ---@field icon string
          ---@field icon_hl string|nil
          ---@field desc string
          ---@field desc_hl string|nil
          ---@field key string
          ---@field key_hl string|nil
          ---@field keymap string|nil
          ---@field action string|fun()
          ---@param shortcut Shortcut
          ---@return Shortcut
          local function key(shortcut)
            shortcut.icon_hl = shortcut.icon_hl or "Title"
            shortcut.desc_hl = shortcut.desc_hl or "String"
            shortcut.key_hl = shortcut.key_hl or "Keyword"
            return shortcut
          end
          local ascii = require('ascii')
          require("dashboard").setup {
            theme = "doom",
            requires = {
              "MaximilianLloyd/ascii.nvim",
            },
            config = {
              header = ascii.get_random("text", "neovim"),
              center = {
                key { icon = "  ", desc = "Restore Session", key = "s", action = "SessionRestore" },
                key { icon = "  ", desc = "Recent Files", key = "fo", action = "Telescope oldfiles" },
                key { icon = " ",  desc = "New File",     key = "n",  action = "enew"},
                key { icon = "  ", desc = "Find Files", key = "ff", action = "Telescope find_files" },
                key { icon = "  ", desc = "Find Word", key = "fw", action = "Telescope live_grep" },
                key { icon = "󰒲  ", desc = "Plugins", key = "l", action = "Lazy" },
                -- key { icon = "  ", desc = "Help", key = "fh", action = "FzfLua help_tags" },
              },
              -- footer = { "🎉 如无必要，勿增实体 🎉" },
            },
          }
        end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_restore_enabled = false,
      -- auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }
    end

  }
  -- {
  --   "williamboman/nvim-lsp-installer",
  --   lazy = false,
  -- }
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
