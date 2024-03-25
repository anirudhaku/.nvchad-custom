-- n, v, i, t = mode names

local M = {}

M.general = {
  i = {
  },

  n = {
  },

  t = {
  },

  v = {
  },

  x = {
  },
}

M.tabufline = {
  plugin = true,

  n = {
  },
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
  },

  v = {
  },
}

M.lspconfig = {
  plugin = true,

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

  n = {
    ["gd"] = {
      function()
        require('telescope.builtin').lsp_definitions()
      end,
      "LSP definitions in Telescope",
    },

    ["gr"] = {
      function()
        require('telescope.builtin').lsp_references()
      end,
      "LSP references in Telescope",
    },

    ["<leader>q"] = {
      function()
        require('telescope.builtin').diagnostics { bufnr = 0 }
      end,
      "LSP Diagnostics in Telescope",
    },

  },
}

return M
