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

    return name:gsub("-", "_"):lower()
end

local function use(name, options)
    options = options or {}
    options[1] = name

    if options["as"] ~= nil then
        options["config"] = config[config_name(options["as"])]
    else
        options["config"] = config[config_name(name)]
    end

    packer.use(options)
end

return packer.startup(function()
	config.init()

    use("wbthomason/packer.nvim", {opt = true})
    use("hoob3rt/lualine.nvim")
	use("folke/lsp-colors.nvim")
	-- use("folke/tokyonight.nvim")
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
			"hrsh7th/cmp-emoji",
            "hrsh7th/cmp-nvim-lsp-document-symbol"
		}
	})
    use("neovim/nvim-lspconfig")
	use("ray-x/lsp_signature.nvim")
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate",
		requires = {"nvim-treesitter/playground"}
    })
    use("folke/todo-comments.nvim", {requires = {"nvim-lua/plenary.nvim"}})
	-- use("lukas-reineke/indent-blankline.nvim")
	use("folke/which-key.nvim")
    -- use("rose-pine/neovim", {as = "rose-pine"})
    -- use("Pocco81/Catppuccino.nvim")
    -- use("folke/twilight.nvim")
    use("lewis6991/spaceless.nvim")
    use("lukas-reineke/virt-column.nvim")
    use("Tetralux/odin.vim")
    -- use("rebelot/kanagawa.nvim")
    -- use("zah/nim.vim.git")
    use("j-hui/fidget.nvim")
    use("EdenEast/nightfox.nvim")
end)
