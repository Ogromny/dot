vim.cmd [[packadd packer.nvim]]

local packer = require "packer"
local use = packer.use
local config = require "plugins.config"

vim.o.swapfile = false
vim.o.signcolumn = "number"
vim.o.relativenumber = true
vim.o.hidden = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

vim.cmd [[nnoremap <Up> <Nop>]]
vim.cmd [[nnoremap <Down> <Nop>]]
vim.cmd [[nnoremap <Left> <Nop>]]
vim.cmd [[nnoremap <Right> <Nop>]]

return packer.startup(function()
    use {
		"wbthomason/packer.nvim",
		opt = true
	}
	-- use {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function ()
	-- 		vim.g.tokyonight_style = "day"
	-- 		-- vim.g.tokyonight_transparent = true
	-- 		vim.g.tokyonight_hide_inactive_statusline = true
	-- 		vim.cmd "colorscheme tokyonight"
	-- 	end
	-- }
	use {
		"folke/lsp-colors.nvim",
		config = config.lsp_colors
	}
	use {
		"EdenEast/nightfox.nvim",
		config = config.nightfox
	}
	use {
		"kyazdani42/nvim-web-devicons",
		config = config.nvim_web_devicons
	}
    use {
        "hoob3rt/lualine.nvim",
		config = config.lualine
    }
	use {
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = config.telescope
	}
    use {
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
		config = config.gitsigns
    }
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-emoji"
		},
		config = config.cmp
	}
    use {
        "neovim/nvim-lspconfig",
		config = config.lspconfig
    }
	use {
		"ray-x/lsp_signature.nvim",
		config = config.lsp_signature
	}
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
		requires = { "nvim-treesitter/playground" },
		config = config.treesitter
    }
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
		config = config.todo_comments
    }
	use {
		"folke/trouble.nvim",
		config = config.trouble
	}
	use {
		"lukas-reineke/indent-blankline.nvim",
		config = config.indent_blankline
	}
	use {
		"windwp/nvim-autopairs",
		config = config.autopairs
	}
	use {
		"plasticboy/vim-markdown",
		requires = { "godlygeek/tabular" },
		config = config.markdown
	}
end)
