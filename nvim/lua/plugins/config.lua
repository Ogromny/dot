local M = {}

function M.lsp_colors()
	require("lsp-colors").setup {}
end

function post_theme_configuration()
	vim.cmd "highlight! LspDiagnosticsVirtualTextError guibg=None"
	vim.cmd "highlight! LspDiagnosticsVirtualTextHint guibg=None"
	vim.cmd "highlight! LspDiagnosticsVirtualTextInformation guibg=None"
	vim.cmd "highlight! LspDiagnosticsVirtualTextWarning guibg=None"
	vim.cmd "highlight! NormalFloat guibg=None"
	vim.cmd "highlight! link PmenuSel DiffText"
end

function M.nightfox()
	vim.g.nightfox_style = "stormfox"
	vim.g.nightfox_italic_comments = true
	vim.g.nightfox_italic_functions = true
	vim.g.nightfox_italic_keywords = true
	vim.g.nightfox_italic_strings = true
	vim.g.nightfox_italic_variables = true
	require("nightfox").set()
end

function M.tokyonight()
	vim.g.tokyonight_style = "storm"
	vim.g.tokyonight_terminal_colors = true
	vim.g.tokyonight_italic_comments = true
	vim.g.tokyonight_italic_keywords = true
	vim.g.tokyonight_italic_functions = true
	vim.g.tokyonight_italic_variables = true
	vim.g.tokyonight_transparent = false
	vim.g.tokyonight_hide_inactive_statusline = false
	vim.g.tokyonight_sidebars = {}
	vim.g.tokyonight_transparent_sidebar = false
	vim.g.tokyonight_dark_sidebar = true
	vim.g.tokyonight_dark_float = true
	vim.g.tokyonight_lualine_bold = true

	vim.cmd [[colorscheme tokyonight]]

	post_theme_configuration()
end

function M.nvim_web_devicons()
	require("nvim-web-devicons").setup {
		default = true
	}
end

function M.lualine()
	require("lualine").setup {
		options = {
			-- theme = "nightfox",
			theme = "tokyonight",
			component_separators = {"", ""} -- {"", ""},
		},
		sections = {
			lualine_x = {
				{ "diagnostics", sources = {"nvim_lsp"} },
				"encoding",
				"fileformat",
				"filetype"
			}
		}
	}
end

function M.telescope()
	local telescope = require("telescope").setup {
		defaults = {
			file_ignore_patterns = {
				"node_modules",
				"vendor"
			}
		}
	}

	vim.cmd [[nnoremap <silent> <leader><leader> :Telescope find_files<CR>]]
	vim.cmd [[nnoremap <silent> <leader>g :Telescope live_grep<CR>]]
	vim.cmd [[nnoremap <silent> <leader>b :Telescope buffers<CR>]]
end

function M.gitsigns()
	require("gitsigns").setup {
		numhl = true,
		linehl = false,
		current_line_blame_opts = {
			delay = 1000,
			position = "eol"
		}
	}
end

function M.cmp()
	local cmp = require "cmp"
	local types = require "cmp.types"
	local luasnip = require "luasnip"

	local check_back_space = function()
		local col = vim.fn.col '.' - 1
		return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
	end
	local t = function(str)
		return vim.api.nvim_replace_termcodes(str, true, true, true)
	end

	cmp.setup {
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},
		completion = {
			autocomplete = {
				types.cmp.TriggerEvent.TextChanged
			},
			completeopt = "menu,menuone,noselect"
		},
		documentation = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			winhighlight = "FloatBorder:FloatBorder"
		},
		formatting = {
			format = function(entry, vim_item)
				local menu = {
					nvim_lsp = "[LSP]",
					luasnip = "[Luasnip]",
					path = "[Path]",
					calc = "[Calc]",
					emoji = "[Emoji]"
				}
				local kind = {
					Text          = " Text",
					Method        = " Method ",
					Function      = " Function ",
					Constructor   = " Constructor",
					Field         = " Field",
					Variable      = " Variable",
					Class         = " Class",
					Interface     = "ﰮ Interface",
					Module        = " Module",
					Property      = " Property",
					Unit          = " Unit",
					Value         = " Value",
					Enum          = " Enum",
					Keyword       = " Keyword",
					Snippet       = "x Snippet",
					Color         = " Color",
					File          = " File",
					Reference     = " Reference",
					Folder        = " Folder",
					EnumMember    = " EnumMember",
					Constant      = " Constant",
					Struct        = " Struct",
					Event         = " Event",
					Operator      = "ﬦ Operator",
					TypeParameter = " TypeParameter"
				}

				vim_item.menu = menu[entry.source.name]
				vim_item.kind = kind[vim_item.kind]

				return vim_item
			end
		},
		mapping = {
			["<Tab>"] = cmp.mapping(function(callback)
				if vim.fn.pumvisible() == 1 then
					vim.fn.feedkeys(t("<C-n>"), "n")
				elseif check_back_space() then
					vim.fn.feedkeys(t("<Tab>"), "n")
				else
					fallback()
				end
			end, {
				"i",
				"s"
			}),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if vim.fn.pumvisible() == 1 then
					vim.fn.feedkeys(t("<C-p>"), "n")
				else
					fallback()
				end
			end, {
				"i",
				"s"
			}),
			["<C-l>"] = cmp.mapping.close(),
			-- ["<C-j>"] = cmp.mapping.mode({ "i", "s" }, function(_, fallback)
			-- 	if luasnip.jumpable(-1) then
			-- 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
			-- 	end
			-- end),
			-- ["<C-k>"] = cmp.mapping.mode({ "i", "s" }, function(_, fallback)
			-- 	if luasnip.expand_or_jumpable() then
			-- 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
			-- 	end
			-- end),
			["<C-Space>"] = cmp.mapping.complete(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true
			})
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "path" },
			{ name = "calc" },
			{ name = "emoji" },
			{ name = "orgmode" }
		}
	}

	require("cmp_nvim_lsp").setup {}
	-- luasnip.config.set_config { history = true }
	require("luasnip/loaders/from_vscode").load {}
end

function M.lspconfig()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown" }
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.completion.completionItem.preselectSupport = true
	capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
	capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
	capabilities.textDocument.completion.completionItem.deprecatedSupport = true
	capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
	capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
	capabilities.textDocument.completion.completionItem.resolveSupport = {
		properties = {
			"documentation",
			"detail",
			"additionalTextEdits",
		}
	}

	local lspconfig = require "lspconfig"
	lspconfig.clangd.setup { capabilities = capabilities }
	lspconfig.html.setup { capabilities = capabilities }
	lspconfig.cssls.setup { capabilities = capabilities }
	lspconfig.jsonls.setup { capabilities = capabilities }
	lspconfig.tailwindcss.setup { capabilities = capabilities }
	lspconfig.intelephense.setup { capabilities = capabilities }
	lspconfig.zls.setup { capabilities = capabilities }
	lspconfig.kotlin_language_server.setup { capabilites = capabilities }
	lspconfig.tsserver.setup { capabilities = capabilities }
	lspconfig.vuels.setup {
        capabilities = capabilities,
        init_options = {
            vetur = {
                validation = {
                    template = true,
                    templateProps = true,
                    interpolation = true,
                    style = true,
                    script = true
                },
                completion = {
                    autoImport = true
                },
                format = {
                    scriptInitialIndent = true,
                    styleInitialIndent = true
                }
            }
        }
    }

	vim.cmd [[nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>]]
	vim.cmd [[nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>]]
	vim.cmd [[nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>]]
	vim.cmd [[nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>]]
	vim.cmd [[nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>]]
	vim.cmd [[nnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>]]
	vim.cmd [[vnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>]]
	vim.cmd [[nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>]]
	vim.cmd [[nnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>]]
	vim.cmd [[nnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border="single", focusable=false})<CR>]]
	vim.cmd [[nnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border="single", focusable = false})<CR>]]

	vim.cmd [[autocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>]]
	vim.o.updatetime = 300

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		vim.lsp.handlers.hover,
		{ border = "single", focusable = false }
	)
end

function M.lsp_signature()
	require("lsp_signature").setup {
		bind = true,
		doc_lines = 5,
		hint_prefix = "🍺 ",
		handler_opts = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
		},
		trigger_on_newline = true
	}
end

function M.treesitter()
	local parsers = require("nvim-treesitter.parsers").get_parser_configs()
	parsers.kotlin = {
		install_info = {
			url = "https://github.com/fwcd/tree-sitter-kotlin",
			files = {"src/parser.c"},
			branch = "main",
		}
	}
	-- NOTE: local dev
	-- parsers.crystal = {
	-- 	install_info = {
	-- 		url = "~/Code/Crystal/tree-sitter-crystal",
	-- 		files = {"src/parser.c", "src/scanner.c"}
	-- 	},
	-- 	filetype = "crystal"
	-- }
	parsers.hare = {
		install_info = {
			url = "~/Code/C/tree-sitter-hare",
			files = {"src/parser.c", "src/scanner.c"}
		},
		filetype = "hare"
	}

	require("nvim-treesitter.configs").setup {
		-- ensure_installed = "all",
		highlight = {
			enable = true,
		},
		indent = { enable = true },
		playground = {
			enable = true,
			disable = {},
			updatetime = 25,
			persist_queries = false,
			keybindings = {
				toggle_query_editor = 'o',
				toggle_hl_groups = 'i',
				toggle_injected_languages = 't',
				toggle_anonymous_nodes = 'a',
				toggle_language_display = 'I',
				focus_language = 'f',
				unfocus_language = 'F',
				update = 'R',
				goto_node = '<cr>',
				show_help = '?',
			},
		}
	}

	vim.o.foldmethod = "expr"
	vim.o.foldexpr = "nvim_treesitter#foldexpr()"
	vim.o.foldlevelstart = 99
end

function M.todo_comments()
	require("todo-comments").setup {}
	vim.o.signcolumn = "yes"
end

function M.trouble()
	require("trouble").setup {}
end

function M.indent_blankline()
	require("indent_blankline").setup {}
end

function M.autopairs()
	require("nvim-autopairs").setup {
		enable_check_bracket_line = false,
		check_ts = true
	}
end

function M.markdown() 
	vim.o.conceallevel = 0
	vim.o.concealcursor = "n"
end

function M.which_key()
	require("which-key").setup {}
end

function M.orgmode()
    require("orgmode").setup {
        org_agenda_files = {"~/Documents/Org/*"}
    }
end

return M
