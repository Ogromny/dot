vim.cmd [[packadd packer.nvim]]

local packer = require("packer")
local config = require("plugins.config")

return packer.startup(function(use)
	config.init()

    use {
        "wbthomason/packer.nvim",
        opt = true
    }

    -- theme
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = config.catppuccin
    }

    -- status bar
    use {
        "feline-nvim/feline.nvim",
        config = config.feline,
        requires = {
            -- icon support
            "kyazdani42/nvim-web-devicons",
            -- git support
            "lewis6991/gitsigns.nvim"
        }
    }

    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = config.treesitter
    }

    -- telescope
    use {
        "nvim-telescope/telescope.nvim",
        config = config.telescope,
        -- needed otherwise catppuccin overwrite highlights 
        after = "catppuccin",
        requires = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim", 
                run = "make"
            }
        }
    }

    -- lsp
    use {
        "neovim/nvim-lspconfig",
        config = config.lspconfig
    }

    -- nvim-cmp
    use {
        "hrsh7th/nvim-cmp",
        config = config.cmp,
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            -- snippet
            "dcampos/nvim-snippy",
            "dcampos/cmp-snippy",
            -- icon
            "onsails/lspkind.nvim"
        }
    }

    -- utils
    use {
        "folke/todo-comments.nvim",
        config = config.todo,
        requires = "nvim-lua/plenary.nvim"
    }
end)
