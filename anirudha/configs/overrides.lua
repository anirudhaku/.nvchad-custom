local M = {}

-- lua and cpp support in mason
M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",

    -- c/cpp stuff
    "clangd"
  },
}

-- git support in nvimtree
-- adjust width to content
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      }
    }
  },

  view = {
    preserve_window_proportions = false,
    width = {
      min = 20,
      max = 60,
      padding = 0
    }
  },

  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  }
}

-- default + (cpp and lua support in treesitter)
M.treesitter = function()
  vim.api.nvim_set_hl(0, "@string", { link = "String" })
  return {
    ensure_installed = {
      "lua",
      "cpp"
    },

    highlight = {
      enable = true,
      use_languagetree = true
    },

    indent = {
      enable = true
    }
  }
end

local cmp = require("cmp")
M.nvimcmp = {
  completion = {
    autocomplete = false
  },
  mapping = {
    ["<C-s>"] = cmp.mapping.complete({ reason = cmp.ContextReason.Manual })
  }
}

return M
