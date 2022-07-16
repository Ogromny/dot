local M = {}

function M.init()
	vim.o.swapfile = false
	vim.o.signcolumn = "number"
	vim.o.relativenumber = true
	vim.o.hidden = true
	vim.o.tabstop = 4
	vim.o.shiftwidth = 4
	vim.o.expandtab = true
	vim.o.completeopt = "menu,menuone,noselect"
	vim.o.laststatus = 3
	vim.o.cmdheight = 0
	vim.g.mapleader = " "

	vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", {})

	local kind = {
		Text = "TSText",
		Method = "TSFunction",
		Function = "TSFunction",
		Constructor = "TSConstructor",
		Field = "TSField",
		Variable = "TSVariable",
		Class = "TSVariableBuiltin",
		Interface = "TSVariableBuiltin",
		Module = "TSVariableBuiltin",
		Property = "TSProperty",
		Unit = "TSInclude",
		Value = "TSText",
		Enum = "TSVariableBuiltin",
		Keyword = "TSKeyword",
		Snippet = "TSTag",
		Color = "TSText",
		File = "TSInclude",
		Reference = "TSVariable",
		Folder = "TSText",
		EnumMember = "TSField",
		Constant = "TSConstant",
		Struct = "TSVariableBuiltin",
		Event = "TSText",
		Operator = "TSOperator",
		TypeParameter = "TSParameter",
	}

	for key, value in pairs(kind) do
		vim.cmd("highlight! link CmpItemKind" .. key .. " " .. value)
	end

	vim.cmd("highlight! NormalFloat guibg=None")
end

function M.lsp_colors()
	require("lsp-colors").setup({})
end

function M.nvim_web_devicons()
	require("nvim-web-devicons").setup({
		default = true,
	})
end

function M.lualine()
	local empty = {
		function()
			return " "
		end,
		padding = { left = 1 },
		color = "lualine_c_normal",
	}

	require("lualine").setup({
		options = {
			component_separators = "",
			section_separators = "",
			globalstatus = true,
            theme = "catppuccin"
		},
		sections = {
			lualine_a = {
				{
					"mode",
					separator = { left = "" },
				},
			},
			lualine_b = {
				{
					"diagnostics",
					separator = { right = "" },
					sources = { "nvim_diagnostic" },
					update_in_insert = true,
					always_visible = true,
				},
			},
			lualine_c = {
				"%=",
				{
					"filename",
					path = 1,
				},
			},
			lualine_x = {
				{
					"filetype",
				},
			},
			lualine_y = {
				{
					"location",
					separator = { left = "" },
				},
			},
			lualine_z = {
				{
					"progress",
					separator = { right = "" },
				},
			},
		},
	})
end

function M.telescope()
	require("telescope").setup({
		defaults = {
			file_ignore_patterns = {
				"node_modules",
				"vendor",
			},
			layout_config = {
				horizontal = {
					prompt_position = "top",
				},
			},
			borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
			prompt_prefix = "   ",
			selection_caret = "  ",
			entry_prefix = "  ",
		},
	})

	local opts = { silent = true, noremap = true }
	vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope find_files<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>g", ":Telescope live_grep<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)

	vim.cmd("highlight! link TelescopePreviewTitle DiagnosticVirtualTextHint")
	vim.cmd("highlight! link TelescopePromptTitle DiagnosticVirtualTextInfo")
	vim.cmd("highlight! link TelescopeResultsNormal NormalFloat")
	vim.cmd("highlight! link TelescopePreviewNormal NormalFloat")
	vim.cmd("highlight! link TelescopePromptNormal Visual")
	vim.cmd("highlight! link TelescopePromptBorder Visual")
	vim.cmd("highlight! link TelescopeBorder NormalFloat")
	vim.cmd("highlight! TelescopeResultsTitle guifg=#232831")
end

function M.gitsigns()
	require("gitsigns").setup({
		numhl = true,
		linehl = false,
		current_line_blame_opts = {
			delay = 1000,
			position = "eol",
		},
	})
end

function M.nvim_cmp()
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	local lspkind = require("lspkind")

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = function(_, item)
				item.menu = item.kind
				item.kind = lspkind.symbolic(item.kind)
				return item
			end,
			-- format = require("lspkind").cmp_format()
		},
		mapping = {
			["<Tab>"] = cmp.mapping(
				cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
				{ "i", "s" }
			),
			["<S-Tab>"] = cmp.mapping(
				cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
				{ "i", "s" }
			),
			["<C-n>"] = cmp.mapping(function()
				if luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				end
			end, { "i", "s" }),
			["<C-p>"] = cmp.mapping(function()
				if luasnip.jumpable(-1) then
					luasnip.jump(-1)
				end
			end, { "i", "s" }),
			["<C-Space>"] = cmp.mapping.complete(),
			["<CR>"] = cmp.mapping.confirm(),
		},
		experimental = {
			ghost_text = true,
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "path" },
			{ name = "calc" },
			{ name = "emoji" },
		},
	})

	require("cmp_nvim_lsp").setup()

	luasnip.config.set_config({ history = true })
	require("luasnip/loaders/from_vscode").load({})
end

function M.nvim_lspconfig()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.offsetEncoding = { "utf-32" }
	capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown" }
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.completion.completionItem.preselectSupport = true
	capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
	capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
	capabilities.textDocument.completion.completionItem.deprecatedSupport = true
	capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
	capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
	capabilities.textDocument.completion.completionItem.resolveSupport = {
		properties = { "documentation", "detail", "additionalTextEdits" },
	}
	capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

	local lspconfig = require("lspconfig")
	lspconfig.clangd.setup({
		capabilities = capabilities,
		cmd = { "clangd", "--header-insertion=never" },
	})
	lspconfig.gopls.setup({ capabilities = capabilities })
	lspconfig.html.setup({ capabilities = capabilities })
	lspconfig.cssls.setup({ capabilities = capabilities })
	lspconfig.jsonls.setup({ capabilities = capabilities })
	lspconfig.tailwindcss.setup({ capabilities = capabilities })
	lspconfig.intelephense.setup({ capabilities = capabilities })
	lspconfig.zls.setup({ capabilities = capabilities })
	lspconfig.kotlin_language_server.setup({ capabilites = capabilities })
	lspconfig.tsserver.setup({ capabilities = capabilities })
	lspconfig.nimls.setup({ capabilities = capabilities })
	lspconfig.jdtls.setup({
		capabilities = capabilities,
		cmd = { "jdtls" },
		root_dir = function(fname)
			return lspconfig.util.root_pattern("pom.xml", "gradle.build", ".git")(fname) or vim.fn.getcwd()
		end,
	})
	lspconfig.vuels.setup({
		capabilities = capabilities,
		init_options = {
			vetur = {
				validation = {
					template = true,
					templateProps = true,
					interpolation = true,
					style = true,
					script = true,
				},
				completion = {
					autoImport = true,
				},
				format = {
					scriptInitialIndent = true,
					styleInitialIndent = true,
				},
			},
		},
	})
	lspconfig.yamlls.setup({
		capabilities = capabilities,
		settings = {
			yaml = {
				schemas = {
					["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.{yml,yaml}",
				},
			},
			redhat = {
				telemetry = {
					enabled = false,
				},
			},
		},
	})

	local runtime_path = vim.split(package.path, ";")
	table.insert(runtime_path, "lua/?.lua")
	table.insert(runtime_path, "lua/?/init.lua")
	lspconfig.sumneko_lua.setup({
		cmd = {
			"/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server",
			"-E",
			"/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua",
		},
		settings = {
			Lua = {
				runtime = { version = "LuaJIT", path = runtime_path },
				diagnostics = { globals = { "vim" } },
				workspace = { library = vim.api.nvim_get_runtime_file("", true) },
				telemetry = { enable = false },
			},
		},
	})

	local opts = { silent = true, noremap = true }
	local popup_opts = "{popup_opts={border='single'}}"
	vim.diagnostic.config({
		float = {
			focusable = false,
		},
	})
	vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
	vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>ac", ":lua vim.lsp.buf.code_action()<CR>", opts)
	vim.api.nvim_set_keymap("v", "<leader>ac", ":lua vim.lsp.buf.range_code_action()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>r", ":lua vim.lsp.buf.rename()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.formatting()<CR>", opts)
	vim.api.nvim_set_keymap("n", "[g", ":lua vim.diagnostic.goto_prev(" .. popup_opts .. ")<CR>", opts)
	vim.api.nvim_set_keymap("n", "]g", ":lua vim.diagnostic.goto_next(" .. popup_opts .. ")<CR>", opts)

	vim.api.nvim_create_autocmd("CursorHold,CursorHoldI", {
		pattern = "*",
		callback = function()
			vim.diagnostic.open_float()
		end,
	})

	vim.o.updatetime = 300
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		vim.lsp.handlers.hover,
		{ border = "single", focusable = false }
	)
	-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	-- 	underline = true,
	-- 	virtual_text = true,
	-- 	signs = true,
	-- 	update_in_insert = true,
	-- })
end

function M.lsp_signature()
	require("lsp_signature").setup({
		bind = true,
		doc_lines = 10,
		handler_opts = {
			border = "single",
		},
		trigger_on_newline = true,
	})
end

function M.nvim_treesitter()
	local parsers = require("nvim-treesitter.parsers").get_parser_configs()
	parsers.hare = {
		install_info = {
			url = "~/Code/C/tree-sitter-hare",
			files = { "src/parser.c", "src/scanner.c" },
		},
		filetype = "hare",
	}

	require("nvim-treesitter.configs").setup({
		highlight = { enable = true },
		indent = { enable = true },
		playground = {
			enable = true,
			disable = {},
			updatetime = 25,
			persist_queries = false,
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},
	})

	vim.o.foldmethod = "expr"
	vim.o.foldexpr = "nvim_treesitter#foldexpr()"
	vim.o.foldlevelstart = 99
end

function M.todo_comments()
	require("todo-comments").setup({})
	vim.o.signcolumn = "yes"
end

function M.which_key()
	require("which-key").setup({})
end

function M.spaceless()
	require("spaceless").setup()
end

function M.figdet()
	require("fidget").setup({})
end

function M.nightfox()
	vim.cmd("colorscheme nordfox")
end

function M.catppuccin()
	require("catppuccin", {
		transparent_background = false,
		term_colors = false,
		styles = {
			comments = "italic",
			conditionals = "italic",
			loops = "NONE",
			functions = "NONE",
			keywords = "NONE",
			strings = "NONE",
			variables = "NONE",
			numbers = "NONE",
			booleans = "NONE",
			properties = "NONE",
			types = "NONE",
			operators = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				},
			},
			lsp_trouble = false,
			cmp = true,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = true,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = false,
				transparent_panel = false,
			},
			neotree = {
				enabled = false,
				show_root = false,
				transparent_panel = false,
			},
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = false,
			},
			dashboard = true,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = true,
			markdown = true,
			lightspeed = false,
			ts_rainbow = false,
			hop = false,
			notify = true,
			telekasten = true,
			symbols_outline = true,
		},
	})

    -- vim.g.catppuccin_flavour = "latte"
    vim.g.catppuccin_flavour = "macchiato"
	vim.cmd("colorscheme catppuccin")
end

function M.move()
	local opts = { silent = true, noremap = true }
	vim.api.nvim_set_keymap("n", "<C-k>", ":MoveLine(-1)<CR>", opts)
	vim.api.nvim_set_keymap("n", "<C-j>", ":MoveLine(1)<CR>", opts)
	vim.api.nvim_set_keymap("v", "<C-k>", ":MoveBlock(-1)<CR>", opts)
	vim.api.nvim_set_keymap("v", "<C-j>", ":MoveBlock(1)<CR>", opts)
	vim.api.nvim_set_keymap("n", "<C-l>", ":MoveHChar(1)<CR>", opts)
	vim.api.nvim_set_keymap("n", "<C-h>", ":MoveHChar(-1)<CR>", opts)
	vim.api.nvim_set_keymap("v", "<C-l>", ":MoveHBlock(1)<CR>", opts)
	vim.api.nvim_set_keymap("v", "<C-h>", ":MoveHBlock(-1)<CR>", opts)
end

function M.null_ls()
	local null = require("null-ls")
	null.setup({
		sources = {
			null.builtins.diagnostics.cppcheck.with({
				filetypes = { "c", "cpp", "h", "hpp" },
				args = { "--enable=all", "-suppress=missingIncludeSystem", "$FILENAME" },
			}),
			null.builtins.formatting.stylua,
		},
		on_init = function(new_client, _)
			new_client.offset_encoding = "utf-32"
		end,
	})
end

return M
