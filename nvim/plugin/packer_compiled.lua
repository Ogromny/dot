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
  local success, result = pcall(loadstring(s))
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
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2B\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2≈\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\1\0\4\16hint_prefix\nüç∫ \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2Ò\2\0\0\6\0\21\0\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\r\0004\3\3\0005\4\n\0005\5\v\0=\5\f\4>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0024\3\0\0=\3\19\2=\2\20\1B\0\2\1K\0\1\0\rsections\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\1\ntheme\14rose-pine\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableã\a\1\0\t\0005\0`6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\4=\4\f\0035\4\15\0006\5\0\0'\6\r\0B\5\2\0029\5\14\5B\5\1\2=\5\16\4=\4\17\0035\4\25\0009\5\18\0009\6\18\0009\6\19\0065\a\22\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\24\0B\5\3\2=\5\26\0049\5\18\0009\6\18\0009\6\27\0065\a\28\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\29\0B\5\3\2=\5\30\0049\5\18\0003\6\31\0005\a \0B\5\3\2=\5!\0049\5\18\0003\6\"\0005\a#\0B\5\3\2=\5$\0049\5\18\0009\5%\5B\5\1\2=\5&\0049\5\18\0009\5'\5B\5\1\2=\5(\4=\4\18\0034\4\6\0005\5)\0>\5\1\0045\5*\0>\5\2\0045\5+\0>\5\3\0045\5,\0>\5\4\0045\5-\0>\5\5\4=\4.\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\2\3\2B\2\1\0019\0020\0019\0021\0025\0032\0B\2\2\0016\2\0\0'\0033\0B\2\2\0029\0024\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2œ\21\0\0\v\0b\0ø\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0-\3B\2\2\0019\2.\0019\2\28\0025\3/\0=\0\30\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\0035\0048\0005\0053\0005\0062\0=\0064\0055\0065\0=\6\5\0055\0066\0=\0067\5=\0059\4=\4:\3B\2\2\0016\2\0\0009\2;\0026\3<\0009\3=\3'\4>\0B\2\3\0026\3?\0009\3@\3\18\4\2\0'\5A\0B\3\3\0016\3?\0009\3@\3\18\4\2\0'\5B\0B\3\3\0019\3C\0019\3\28\0035\4E\0005\5D\0=\5F\0045\5V\0005\6H\0005\aG\0=\2=\a=\aI\0065\aK\0005\bJ\0=\bL\a=\aM\0065\aQ\0006\b\0\0009\bN\b9\bO\b'\tP\0+\n\2\0B\b\3\2=\bR\a=\aS\0065\aT\0=\aU\6=\6W\5=\5X\4B\3\2\0016\3\23\0'\4Y\0B\3\2\0029\4F\0035\5Z\0B\4\2\0019\4[\0035\5\\\0B\4\2\0016\4\0\0009\4\1\0049\4]\0046\5\0\0009\5\1\0059\5_\0056\6\0\0009\6\1\0069\6]\0069\6`\0065\aa\0B\5\3\2=\5^\4K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\1\0\1\15updatetime\3¨\2\bset\1\r\0\0<nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>pnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({popup_opts={border=\"single\", focusable=false}})<CR>pnnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({popup_opts={border=\"single\", focusable=false}})<CR>Yautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>\r../utils\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2µ\6\0\0\5\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\2\r\0B\1\2\0029\1\14\0015\2\16\0005\3\15\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0004\4\0\0=\4\21\0035\4\22\0=\4\23\3=\3\24\2B\1\2\0016\1\0\0'\2\25\0B\1\2\0029\2\26\0015\3\27\0B\2\2\1K\0\1\0\1\0\3\19foldlevelstart\3c\15foldmethod\texpr\rfoldexpr\31nvim_treesitter#foldexpr()\bset\r../utils\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\1\0\1\rfiletype\tblad\1\2\0\0\17src/parser.c\1\0\1\burl\31~/Code/C/tree-sitter-blade\nblade\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\2É\1\0\0\3\0\6\0\n6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0B\1\2\0019\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\2\0\0\26colorscheme rose-pine\bcmd\1\0\1\22rose_pine_variant\tmoon\15set_global\r../utils\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/rose-pine"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2’\2\0\0\4\0\v\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0016\0\0\0'\1\b\0B\0\2\0029\1\t\0005\2\n\0B\1\2\1K\0\1\0\1\4\0\0Annoremap <silent> <leader><leader> :Telescope find_files<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>7nnoremap <silent> <leader>b :Telescope buffers<CR>\bcmd\r../utils\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2v\0\0\3\0\6\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\0\1\15signcolumn\byes\bset\r../utils\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-blade"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/vim-blade"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/which-key.nvim"
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
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableã\a\1\0\t\0005\0`6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\4=\4\f\0035\4\15\0006\5\0\0'\6\r\0B\5\2\0029\5\14\5B\5\1\2=\5\16\4=\4\17\0035\4\25\0009\5\18\0009\6\18\0009\6\19\0065\a\22\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\24\0B\5\3\2=\5\26\0049\5\18\0009\6\18\0009\6\27\0065\a\28\0009\b\20\0009\b\21\b=\b\23\aB\6\2\0025\a\29\0B\5\3\2=\5\30\0049\5\18\0003\6\31\0005\a \0B\5\3\2=\5!\0049\5\18\0003\6\"\0005\a#\0B\5\3\2=\5$\0049\5\18\0009\5%\5B\5\1\2=\5&\0049\5\18\0009\5'\5B\5\1\2=\5(\4=\4\18\0034\4\6\0005\5)\0>\5\1\0045\5*\0>\5\2\0045\5+\0>\5\3\0045\5,\0>\5\4\0045\5-\0>\5\5\4=\4.\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\2\3\2B\2\1\0019\0020\0019\0021\0025\0032\0B\2\2\0016\2\0\0'\0033\0B\2\2\0029\0024\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2Ò\2\0\0\6\0\21\0\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\r\0004\3\3\0005\4\n\0005\5\v\0=\5\f\4>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0024\3\0\0=\3\19\2=\2\20\1B\0\2\1K\0\1\0\rsections\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\1\ntheme\14rose-pine\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2œ\21\0\0\v\0b\0ø\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0-\3B\2\2\0019\2.\0019\2\28\0025\3/\0=\0\30\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\0035\0048\0005\0053\0005\0062\0=\0064\0055\0065\0=\6\5\0055\0066\0=\0067\5=\0059\4=\4:\3B\2\2\0016\2\0\0009\2;\0026\3<\0009\3=\3'\4>\0B\2\3\0026\3?\0009\3@\3\18\4\2\0'\5A\0B\3\3\0016\3?\0009\3@\3\18\4\2\0'\5B\0B\3\3\0019\3C\0019\3\28\0035\4E\0005\5D\0=\5F\0045\5V\0005\6H\0005\aG\0=\2=\a=\aI\0065\aK\0005\bJ\0=\bL\a=\aM\0065\aQ\0006\b\0\0009\bN\b9\bO\b'\tP\0+\n\2\0B\b\3\2=\bR\a=\aS\0065\aT\0=\aU\6=\6W\5=\5X\4B\3\2\0016\3\23\0'\4Y\0B\3\2\0029\4F\0035\5Z\0B\4\2\0019\4[\0035\5\\\0B\4\2\0016\4\0\0009\4\1\0049\4]\0046\5\0\0009\5\1\0059\5_\0056\6\0\0009\6\1\0069\6]\0069\6`\0065\aa\0B\5\3\2=\5^\4K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\1\0\1\15updatetime\3¨\2\bset\1\r\0\0<nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>pnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({popup_opts={border=\"single\", focusable=false}})<CR>pnnoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({popup_opts={border=\"single\", focusable=false}})<CR>Yautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>\r../utils\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2v\0\0\3\0\6\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\0\1\15signcolumn\byes\bset\r../utils\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\2É\1\0\0\3\0\6\0\n6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0B\1\2\0019\1\4\0005\2\5\0B\1\2\1K\0\1\0\1\2\0\0\26colorscheme rose-pine\bcmd\1\0\1\22rose_pine_variant\tmoon\15set_global\r../utils\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2µ\6\0\0\5\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\2\r\0B\1\2\0029\1\14\0015\2\16\0005\3\15\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0004\4\0\0=\4\21\0035\4\22\0=\4\23\3=\3\24\2B\1\2\0016\1\0\0'\2\25\0B\1\2\0029\2\26\0015\3\27\0B\2\2\1K\0\1\0\1\0\3\19foldlevelstart\3c\15foldmethod\texpr\rfoldexpr\31nvim_treesitter#foldexpr()\bset\r../utils\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\1\0\1\rfiletype\tblad\1\2\0\0\17src/parser.c\1\0\1\burl\31~/Code/C/tree-sitter-blade\nblade\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
