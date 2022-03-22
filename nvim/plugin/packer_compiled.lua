-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ogromny/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ogromny/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ogromny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ogromny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ogromny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2≈\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\1\0\4\16hint_prefix\nüç∫ \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2˜\2\0\0\6\0\21\0\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\r\0004\3\3\0005\4\n\0005\5\v\0=\5\f\4>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0024\3\0\0=\3\19\2=\2\20\1B\0\2\1K\0\1\0\rsections\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\1\ntheme\rnightfox\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\2P\0\0\3\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0B\1\2\1K\0\1\0\1\2\0\0\24colorscheme nordfox\bcmd\r../utils\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableÑ\b\1\0\t\0:\0o6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\4=\4\f\0035\4\15\0006\5\0\0'\6\r\0B\5\2\0029\5\14\5B\5\1\2=\5\16\4=\4\17\0035\4\25\0009\5\18\0009\6\18\0009\6\19\0065\a\22\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\24\0B\5\3\2=\5\26\0049\5\18\0009\6\18\0009\6\27\0065\a\28\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\29\0B\5\3\2=\5\30\0049\5\18\0003\6\31\0005\a \0B\5\3\2=\5!\0049\5\18\0003\6\"\0005\a#\0B\5\3\2=\5$\0049\5\18\0009\5%\5B\5\1\2=\5&\0049\5\18\0009\5'\5B\5\1\2=\5(\4=\4\18\0034\4\6\0005\5)\0>\5\1\0045\5*\0>\5\2\0045\5+\0>\5\3\0045\5,\0>\5\4\0045\5-\0>\5\5\4=\4.\3B\2\2\0019\2\3\0009\2/\2'\0030\0005\0044\0009\0051\0009\5.\0054\6\3\0005\a2\0>\a\1\0064\a\3\0005\b3\0>\b\1\aB\5\3\2=\5.\4B\2\3\0016\2\0\0'\0035\0B\2\2\0029\2\3\2B\2\1\0019\0021\0019\0026\0025\0037\0B\2\2\0016\2\0\0'\0038\0B\2\2\0029\0029\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\17cmp_nvim_lsp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\29nvim_lsp_document_symbol\vconfig\6/\fcmdline\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2É\1\0\1\5\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\2\2\0'\3\3\0'\4\4\0B\1\4\2\18\2\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutilŒ\22\1\0\v\0k\0”\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0\30\3B\2\2\0019\2-\0019\2\28\0025\3.\0=\0/\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\3B\2\2\0019\0022\0019\2\28\0025\0033\0=\0\30\3B\2\2\0019\0024\0019\2\28\0025\0035\0=\0\30\0035\0046\0=\0047\0033\0048\0=\0049\3B\2\2\0019\2:\0019\2\28\0025\3;\0=\0\30\0035\4B\0005\5=\0005\6<\0=\6>\0055\6?\0=\6\5\0055\6@\0=\6A\5=\5C\4=\4D\3B\2\2\0016\2\0\0009\2E\0026\3F\0009\3G\3'\4H\0B\2\3\0026\3I\0009\3J\3\18\4\2\0'\5K\0B\3\3\0016\3I\0009\3J\3\18\4\2\0'\5L\0B\3\3\0019\3M\0019\3\28\0035\4O\0005\5N\0=\0057\0045\5_\0005\6Q\0005\aP\0=\2G\a=\aR\0065\aT\0005\bS\0=\bU\a=\aV\0065\aZ\0006\b\0\0009\bW\b9\bX\b'\tY\0+\n\2\0B\b\3\2=\b[\a=\a\\\0065\a]\0=\a^\6=\6`\5=\5a\4B\3\2\0016\3\23\0'\4b\0B\3\2\0029\0047\0035\5c\0B\4\2\0019\4d\0035\5e\0B\4\2\0016\4\0\0009\4\1\0049\4f\0046\5\0\0009\5\1\0059\5h\0056\6\0\0009\6\1\0069\6f\0069\6i\0065\aj\0B\5\3\2=\5g\0042\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\1\0\1\15updatetime\3¨\2\bset\1\r\0\0<nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>pnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({popup_opts={border=\"single\", focusable=false}})<CR>pnnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({popup_opts={border=\"single\", focusable=false}})<CR>Yautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>\r../utils\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\rroot_dir\0\bcmd\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2”\5\0\0\5\0\24\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\2\t\0B\1\2\0029\1\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0004\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\1\2\0016\1\0\0'\2\21\0B\1\2\0029\2\22\0015\3\23\0B\2\2\1K\0\1\0\1\0\3\19foldlevelstart\3c\15foldmethod\texpr\rfoldexpr\31nvim_treesitter#foldexpr()\bset\r../utils\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["odin.vim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/odin.vim",
    url = "https://github.com/Tetralux/odin.vim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["spaceless.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/spaceless.nvim",
    url = "https://github.com/lewis6991/spaceless.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2’\2\0\0\4\0\v\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0016\0\0\0'\1\b\0B\0\2\0029\1\t\0005\2\n\0B\1\2\1K\0\1\0\1\4\0\0Annoremap <silent> <leader><leader> :Telescope find_files<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>7nnoremap <silent> <leader>b :Telescope buffers<CR>\bcmd\r../utils\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2v\0\0\3\0\6\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\0\1\15signcolumn\byes\bset\r../utils\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["virt-column.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/virt-column.nvim",
    url = "https://github.com/lukas-reineke/virt-column.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2≈\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\1\0\4\16hint_prefix\nüç∫ \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2’\2\0\0\4\0\v\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0016\0\0\0'\1\b\0B\0\2\0029\1\t\0005\2\n\0B\1\2\1K\0\1\0\1\4\0\0Annoremap <silent> <leader><leader> :Telescope find_files<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>7nnoremap <silent> <leader>b :Telescope buffers<CR>\bcmd\r../utils\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableÑ\b\1\0\t\0:\0o6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\4=\4\f\0035\4\15\0006\5\0\0'\6\r\0B\5\2\0029\5\14\5B\5\1\2=\5\16\4=\4\17\0035\4\25\0009\5\18\0009\6\18\0009\6\19\0065\a\22\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\24\0B\5\3\2=\5\26\0049\5\18\0009\6\18\0009\6\27\0065\a\28\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\29\0B\5\3\2=\5\30\0049\5\18\0003\6\31\0005\a \0B\5\3\2=\5!\0049\5\18\0003\6\"\0005\a#\0B\5\3\2=\5$\0049\5\18\0009\5%\5B\5\1\2=\5&\0049\5\18\0009\5'\5B\5\1\2=\5(\4=\4\18\0034\4\6\0005\5)\0>\5\1\0045\5*\0>\5\2\0045\5+\0>\5\3\0045\5,\0>\5\4\0045\5-\0>\5\5\4=\4.\3B\2\2\0019\2\3\0009\2/\2'\0030\0005\0044\0009\0051\0009\5.\0054\6\3\0005\a2\0>\a\1\0064\a\3\0005\b3\0>\b\1\aB\5\3\2=\5.\4B\2\3\0016\2\0\0'\0035\0B\2\2\0029\2\3\2B\2\1\0019\0021\0019\0026\0025\0037\0B\2\2\0016\2\0\0'\0038\0B\2\2\0029\0029\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\17cmp_nvim_lsp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\29nvim_lsp_document_symbol\vconfig\6/\fcmdline\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: spaceless.nvim
time([[Config for spaceless.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0", "config", "spaceless.nvim")
time([[Config for spaceless.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2É\1\0\1\5\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\2\2\0'\3\3\0'\4\4\0B\1\4\2\18\2\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutilŒ\22\1\0\v\0k\0”\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0\30\3B\2\2\0019\2-\0019\2\28\0025\3.\0=\0/\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\3B\2\2\0019\0022\0019\2\28\0025\0033\0=\0\30\3B\2\2\0019\0024\0019\2\28\0025\0035\0=\0\30\0035\0046\0=\0047\0033\0048\0=\0049\3B\2\2\0019\2:\0019\2\28\0025\3;\0=\0\30\0035\4B\0005\5=\0005\6<\0=\6>\0055\6?\0=\6\5\0055\6@\0=\6A\5=\5C\4=\4D\3B\2\2\0016\2\0\0009\2E\0026\3F\0009\3G\3'\4H\0B\2\3\0026\3I\0009\3J\3\18\4\2\0'\5K\0B\3\3\0016\3I\0009\3J\3\18\4\2\0'\5L\0B\3\3\0019\3M\0019\3\28\0035\4O\0005\5N\0=\0057\0045\5_\0005\6Q\0005\aP\0=\2G\a=\aR\0065\aT\0005\bS\0=\bU\a=\aV\0065\aZ\0006\b\0\0009\bW\b9\bX\b'\tY\0+\n\2\0B\b\3\2=\b[\a=\a\\\0065\a]\0=\a^\6=\6`\5=\5a\4B\3\2\0016\3\23\0'\4b\0B\3\2\0029\0047\0035\5c\0B\4\2\0019\4d\0035\5e\0B\4\2\0016\4\0\0009\4\1\0049\4f\0046\5\0\0009\5\1\0059\5h\0056\6\0\0009\6\1\0069\6f\0069\6i\0065\aj\0B\5\3\2=\5g\0042\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\1\0\1\15updatetime\3¨\2\bset\1\r\0\0<nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>pnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({popup_opts={border=\"single\", focusable=false}})<CR>pnnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({popup_opts={border=\"single\", focusable=false}})<CR>Yautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>\r../utils\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\rroot_dir\0\bcmd\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2”\5\0\0\5\0\24\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\2\t\0B\1\2\0029\1\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0004\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\1\2\0016\1\0\0'\2\21\0B\1\2\0029\2\22\0015\3\23\0B\2\2\1K\0\1\0\1\0\3\19foldlevelstart\3c\15foldmethod\texpr\rfoldexpr\31nvim_treesitter#foldexpr()\bset\r../utils\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2˜\2\0\0\6\0\21\0\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\r\0004\3\3\0005\4\n\0005\5\v\0=\5\f\4>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0024\3\0\0=\3\19\2=\2\20\1B\0\2\1K\0\1\0\rsections\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\1\ntheme\rnightfox\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2v\0\0\3\0\6\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\0\1\15signcolumn\byes\bset\r../utils\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: virt-column.nvim
time([[Config for virt-column.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "virt-column.nvim")
time([[Config for virt-column.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\2P\0\0\3\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0B\1\2\1K\0\1\0\1\2\0\0\24colorscheme nordfox\bcmd\r../utils\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
