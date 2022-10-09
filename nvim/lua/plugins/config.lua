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
	vim.o.cmdheight = 1
	vim.g.mapleader = " "
    vim.o.termguicolors = true

	vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", {})
	vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", {})
    vim.api.nvim_set_keymap("t", "<esc>", "<C-\\><C-N>", { noremap = true })
end

function M.catppuccin()
    require("catppuccin").setup {
        term_colors = true,
        integrations = {
            gitsigns = true,
            cmp = true,
            treesitter = true,
            telescope = true,
            native_lsp = {
                enabled = true
            }
        }
    }
    vim.g.catppuccin_flavour = "frappe"
    vim.cmd("colorscheme catppuccin")
end

function M.feline()
    require("nvim-web-devicons").setup()
    require("gitsigns").setup()
    require("feline").setup {
        components = require("catppuccin.groups.integrations.feline").get()
    }
end

function M.treesitter()
    require("nvim-treesitter.configs").setup {
        sync_install = true,
        auto_install = true,
        highlight = {
            enable = true
        }
    }
end

function M.telescope()
    local telescope = require("telescope")
    telescope.setup {
        defaults = {
            layout_config = {
                horizontal = {
                    prompt_position = "top"
                }
            },
            borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
            prompt_prefix = "   ",
            selection_caret = "  ",
            entry_prefix = "  "
        }
    }

    -- keymap
    local opts = { 
        silent = true, 
        noremap = true 
    }
    vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope find_files<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>g", ":Telescope live_grep<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)

    -- highlight
    vim.cmd("highlight! link TelescopePreviewTitle DiagnosticVirtualTextHint")
    vim.cmd("highlight! link TelescopePromptTitle DiagnosticVirtualTextInfo")
    vim.cmd("highlight! link TelescopeResultsNormal NormalFloat")
    vim.cmd("highlight! link TelescopePreviewNormal NormalFloat")
    vim.cmd("highlight! link TelescopePromptNormal Visual")
    vim.cmd("highlight! link TelescopePromptBorder Visual")
    vim.cmd("highlight! link TelescopeBorder NormalFloat")
    vim.cmd("highlight! TelescopeResultsTitle guifg=#232831")

    -- extensions
    telescope.load_extension("fzf")
end

function M.lspconfig()
    local lspconfig = require("lspconfig")

    -- diagnostics keymap
    local opts = {
        noremap = true,
        silent = true
    }

    vim.diagnostic.config {
        float = {
            focusable = false
        }
    }
    vim.api.nvim_set_keymap("n", "[g", ":lua vim.diagnostic.goto_prev()<CR>", opts)
    vim.api.nvim_set_keymap("n", "]g", ":lua vim.diagnostic.goto_next()<CR>", opts)
    vim.api.nvim_create_autocmd("CursorHold,CursorHoldI", {
        pattern = "*",
        callback = vim.diagnostic.open_float
    })
    vim.o.updatetime = 300

    -- on_attach function
    local on_attach = function(client, bufnr)
        local opts = {
            noremap = true,
            silent = true
        }

        -- keymap
        local buf_keymap = vim.api.nvim_buf_set_keymap
        buf_keymap(bufnr, "n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
        buf_keymap(bufnr, "n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
        buf_keymap(bufnr, "n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
        buf_keymap(bufnr, "n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
        buf_keymap(bufnr, "n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
        buf_keymap(bufnr, "n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
        buf_keymap(bufnr, "n", "<leader>ac", ":lua vim.lsp.buf.code_action()<CR>", opts)
        buf_keymap(bufnr, "v", "<leader>ac", ":lua vim.lsp.buf.range_code_action()<CR>", opts)
        buf_keymap(bufnr, "n", "<leader>r", ":lua vim.lsp.buf.rename()<CR>", opts)
        buf_keymap(bufnr, "n", "<leader>f", ":lua vim.lsp.buf.formatting()<CR>", opts)
    end

    -- lsp server
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

    lspconfig.clangd.setup {
        cmd = {
            "clangd",
            "--header-insertion=never"
        },
        capabilities = capabilities,
        on_attach = on_attach
    }
    lspconfig.gopls.setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
    lspconfig.zls.setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
    lspconfig.cssls.setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
    lspconfig.html.setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
    lspconfig.tailwindcss.setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
end

function M.cmp()
    local cmp = require("cmp")
    cmp.setup {
        snippet = {
            expand = function(args)
                require("snippy").expand_snippet(args.body)
            end
        },
        formatting = {
            format = require("lspkind").cmp_format {
                maxwidth = 50
            }
        },
        window = {
            -- completion = cmp.config.window.bordered(),
            -- documentation = cmp.config.window.bordered()
        },
        mapping = cmp.mapping.preset.insert {
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<CR>"] = cmp.mapping.confirm()
        },
        sources = cmp.config.sources {
            { name = "nvim_lsp" },
            { name = "nvim_lsp_signature_help" },
            { name = "path" },
            { name = "snippy" }
        },
        experimental = {
            ghost_text = true
        }
    }

    cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" }
        }
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "cmdline" },
            { name = "path" }
        }
    })
end

function M.todo()
    require("todo-comments").setup()
end

function M.notifier()
    require("notifier").setup()
end

return M
