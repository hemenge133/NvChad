local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "markdown",
    "markdown_inline",
    "python"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- Apply pywal to all custom packages (load last)
-- Add ui deps to pywal to color them
M.lazy = {
  install = {
    colorscheme = {
      "pywal"
    }
  }
}

-- Custom ignore file for ripgrep
M.telescope = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--ignore-file=~/.rgignore",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
  }
}


return M
