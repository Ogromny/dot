local M = {}

function M.init()
    local utils = require "../utils"
    utils.set {
        swapfile = false,
        signcolumn = "number",
        relativenumber = true,
        hidden = true,
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        completeopt = "menu,menuone,noselect"
    }
    utils.cmd {
        [[nnoremap <Up> <Nop>]],
        [[nnoremap <Down> <Nop>]],
        [[nnoremap <Left> <Nop>]],
        [[nnoremap <Right> <Nop>]],

        [[autocmd BufRead,BufNewFile *.ha set ft=hare]],
    }
end

function M.lsp_colors()
	require("lsp-colors").setup {}
end

function M.tokyonight()
    local utils = require "../utils"
    utils.set_global {
        tokyonight_style = "storm",
        tokyonight_terminal_colors = true,
        tokyonight_italic_comments = true,
        tokyonight_italic_keywords = true,
        tokyonight_italic_functions = true,
        tokyonight_italic_variables = true,
        tokyonight_transparent = false,
        tokyonight_hide_inactive_statusline = false,
        tokyonight_sidebars = {},
        tokyonight_transparent_sidebar = false,
        tokyonight_dark_sidebar = true,
        tokyonight_dark_float = true,
        tokyonight_lualine_bold = true
    }
    utils.cmd {
        [[colorscheme tokyonight]],
        [[highlight! NormalFloat guibg=None]],
        [[highlight! link PmenuSel DiffText]]
    }
end

function M.nvim_web_devicons()
	require("nvim-web-devicons").setup {
		default = true
	}
end

function M.lualine()
	require("lualine").setup {
		options = {
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
	require("telescope").setup {
		defaults = {
			file_ignore_patterns = {
				"node_modules",
				"vendor"
			}
		}
	}

    local utils = require "../utils"
    utils.cmd {
        [[nnoremap <silent> <leader><leader> :Telescope find_files<CR>]],
        [[nnoremap <silent> <leader>g :Telescope live_grep<CR>]],
        [[nnoremap <silent> <leader>b :Telescope buffers<CR>]]
    }
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

function M.nvim_cmp()
	local cmp = require "cmp"
    cmp.setup {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        documentation = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
            winhighlight = "FloatBorder:FloatBorder"
        },
        formatting = {
            format = require("lspkind").cmp_format()
        },
        mapping = {
            ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {"i", "s"}),
            ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {"i", "s"}),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<CR>"] = cmp.mapping.confirm()
        },
        sources = {
            {name = "nvim_lsp"},
            {name = "luasnip"},
            {name = "path"},
            {name = "calc"},
            {name = "emoji"}
        }
    }

	require("cmp_nvim_lsp").setup()
	require("luasnip/loaders/from_vscode").load {}
end

function M.nvim_lspconfig()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.documentationFormat = {"markdown"}
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.completion.completionItem.preselectSupport = true
	capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
	capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
	capabilities.textDocument.completion.completionItem.deprecatedSupport = true
	capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
	capabilities.textDocument.completion.completionItem.tagSupport = {valueSet = {1}}
	capabilities.textDocument.completion.completionItem.resolveSupport = {
		properties = {"documentation", "detail", "additionalTextEdits"}
	}
    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

	local lspconfig = require "lspconfig"
	lspconfig.clangd.setup {capabilities = capabilities}
	lspconfig.html.setup {capabilities = capabilities}
	lspconfig.cssls.setup {capabilities = capabilities}
	lspconfig.jsonls.setup {capabilities = capabilities}
	lspconfig.tailwindcss.setup {capabilities = capabilities}
	lspconfig.intelephense.setup {capabilities = capabilities}
	lspconfig.zls.setup {capabilities = capabilities}
	lspconfig.kotlin_language_server.setup {capabilites = capabilities}
	lspconfig.tsserver.setup {capabilities = capabilities}
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

    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua")
    lspconfig.sumneko_lua.setup {
        cmd = {
            "/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server",
            "-E",
            "/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua",
        },
        settings = {
            Lua = {
                runtime = {version = "LuaJIT", path = runtime_path},
                diagnostics = {globals = {"vim"}},
                workspace = {library = vim.api.nvim_get_runtime_file("", true)},
                telemetry = {enable = false}
            }
        }
    }

    local utils = require "../utils"
    utils.cmd {
        [[nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>]],
        [[nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>]],
        [[nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>]],
        [[nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>]],
        [[nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>]],
        [[nnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>]],
        [[vnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>]],
        [[nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>]],
        [[nnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>]],
        [[nnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border="single", focusable=false})<CR>]],
        [[nnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border="single", focusable=false})<CR>]],

        [[autocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>]]
    }

    utils.set {
        updatetime = 300
    }

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		vim.lsp.handlers.hover,
		{border = "single", focusable = false}
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

function M.nvim_treesitter()
	local parsers = require("nvim-treesitter.parsers").get_parser_configs()
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

    local utils = require "../utils"
    utils.set {
        foldmethod = "expr",
        foldexpr = "nvim_treesitter#foldexpr()",
        foldlevelstart = 99
    }
end

function M.todo_comments()
	require("todo-comments").setup {}
    local utils = require "../utils"
    utils.set {
        signcolumn = "yes"
    }
end

function M.trouble()
	require("trouble").setup {}
end

function M.indent_blankline()
	require("indent_blankline").setup {}
end

function M.nvim_autopairs()
	-- require("nvim-autopairs").setup {
	-- 	enable_check_bracket_line = false,
	-- 	check_ts = true
	-- }
end

function M.which_key()
	require("which-key").setup {}
end

return M
