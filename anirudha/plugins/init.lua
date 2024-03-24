local overrides = require("custom.anirudha.plugins.configs.overrides")

local plugins = {
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.anirudha.plugins.configs.null-ls"
        end
      }
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.anirudha.plugins.configs.lspconfigs"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter
  },
  {
    "windwp/nvim-autopairs",
    enabled = false
  },
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.nvimcmp
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-smart-history.nvim",
        dependencies = {
          "kkharji/sqlite.lua"
        }
      }
    },
    opts = overrides.telescope
  },
  {
    "dhananjaylatkar/cscope_maps.nvim",
    dependencies = {
      -- optional [for whichkey hints]
      "folke/which-key.nvim",
      -- optional [for picker="telescope"]
      "nvim-telescope/telescope.nvim",
      -- optional [for devicons in telescope or fzf]
      "nvim-tree/nvim-web-devicons"
    },
    ft = {
      "cpp",
      "cfg",
      "proto",
      "json",
      "default",
    },
    opts = {
      -- Don't prompt when invoked through shortcuts!
      skip_input_prompt = true,
      cscope = {
        picker = "telescope",
        db_build_cmd_args = {
          "-bq"
        }
      }
    }
  },
  {
    dir = vim.fn.stdpath("config") .. "/lua/custom/anirudha/plugins/local/build_cscope.nvim",
    dependencies = {
      "dhananjaylatkar/cscope_maps.nvim"
    },
    ft = {
      "cpp",
      "cfg",
      "proto",
      "json",
      "default",
    },
    opts = {
      file_types = {
        "c",
        "cc",
        "cpp",
        "h",
        "hh",
        "hpp",
        "json",
        "cfg",
        "default",
        "proto",
      },
      ignore_paths = {
        "./build*",
        "./.tup",
      },
    },
  },
}

return plugins
