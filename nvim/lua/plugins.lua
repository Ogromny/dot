vim.cmd [[packadd packer.nvim]]

local packer = require "packer"
local config = require "plugins.config"

local function config_name(name)
    local pos = name:find("/")
    if pos ~= nil then
        name = name:sub(pos + 1)
    end

    pos = name:find(".", 1, true)
    if pos ~= nil then
        name = name:sub(1, pos - 1)
    end

    return name:gsub("-", "_")
end

local function use(name, options)
    options = options or {}
    options[1] = name
    options["config"] = config[config_name(name)]

    packer.use(options)
end

return packer.startup(function()
	config.init()

    use("wbthomason/packer.nvim", {opt = true})
    use("hoob3rt/lualine.nvim")
	use("folke/lsp-colors.nvim")
	use("folke/tokyonight.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-telescope/telescope.nvim", {requires = {"nvim-lua/plenary.nvim"}})
    use("lewis6991/gitsigns.nvim", {requires = {"nvim-lua/plenary.nvim"}})
	use("hrsh7th/nvim-cmp", {
		requires = {
            "onsails/lspkind-nvim",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-emoji"
		}
	})
    use("neovim/nvim-lspconfig")
	use("ray-x/lsp_signature.nvim")
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate",
		requires = {"nvim-treesitter/playground"}
    })
    use("folke/todo-comments.nvim", {requires = {"nvim-lua/plenary.nvim"}})
	use("folke/trouble.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("windwp/nvim-autopairs")
	use("jwalton512/vim-blade")
	use("folke/which-key.nvim")
end)
