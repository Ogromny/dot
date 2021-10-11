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
    config = { "\27LJ\2\2�\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3�\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
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
    config = { "\27LJ\2\2�\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b┌\b─\b┐\b│\b┘\b─\b└\b│\1\0\4\16hint_prefix\n🍺 \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2�\2\0\0\6\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\f\0005\3\v\0005\4\b\0005\5\t\0=\5\n\4>\4\1\3=\3\r\2=\2\14\1B\0\2\1K\0\1\0\rsections\14lualine_x\1\0\0\1\5\0\0\0\rencoding\15fileformat\rfiletype\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\foptions\1\0\0\25component_separators\1\3\0\0\5\5\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2h\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18�6\1\0\0009\1\1\0019\1\4\1'\2\3\0B\1\2\2\18\2\1\0009\1\5\1\18\3\0\0\18\4\0\0B\1\4\2\18\2\1\0009\1\6\1'\3\a\0B\1\3\2\v\1\0\0X\1\2�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0F\0\1\6\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\2\0\0+\3\2\0+\4\2\0+\5\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\2�\tbody\15lsp_expand�\4\0\2\5\0\6\0\n5\2\0\0005\3\1\0009\4\3\0009\4\4\0048\4\4\2=\4\2\0019\4\5\0018\4\4\3=\4\5\1L\1\2\0\tkind\tname\vsource\tmenu\1\0\25\tText\r Text\rFunction\18 Function \rOperator\17ﬦ Operator\nColor\14 Color\nClass\14 Class\vModule\15 Module\rConstant\17 Constant\rProperty\17 Property\vMethod\16 Method \15EnumMember\19 EnumMember\tUnit\r Unit\14Interface\18ﰮ Interface\vStruct\15 Struct\rVariable\17 Variable\fSnippet\14x Snippet\vFolder\15 Folder\nEvent\14 Event\nField\14 Field\18TypeParameter\22 TypeParameter\tFile\r File\nValue\14 Value\16Constructor\20 Constructor\tEnum\r Enum\fKeyword\16 Keyword\14Reference\18 Reference\1\0\5\nemoji\f[Emoji]\tpath\v[Path]\rnvim_lsp\n[LSP]\tcalc\v[Calc]\fluasnip\14[Luasnip]�\1\0\1\4\2\b\1\0316\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\4\0B\2\2\2'\3\5\0B\1\3\1X\1\15�-\1\1\0B\1\1\2\15\0\1\0X\2\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\6\0B\2\2\2'\3\5\0B\1\3\1X\1\2�6\1\a\0B\1\1\1K\0\1\0\4�\3�\rfallback\n<Tab>\6n\n<C-n>\rfeedkeys\15pumvisible\afn\bvim\2u\0\1\4\1\6\1\0186\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\4\0B\2\2\2'\3\5\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\4�\6n\n<C-p>\rfeedkeys\15pumvisible\afn\bvim\2�\a\1\0\v\0005\0Z6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0023\3\4\0003\4\5\0009\5\6\0005\6\n\0005\a\b\0003\b\a\0=\b\t\a=\a\v\0065\a\14\0004\b\3\0009\t\1\0019\t\f\t9\t\r\t>\t\1\b=\b\15\a=\a\16\0065\a\18\0005\b\17\0=\b\19\a=\a\20\0065\a\22\0003\b\21\0=\b\23\a=\a\24\0065\a\28\0009\b\25\0003\t\26\0005\n\27\0B\b\3\2=\b\29\a9\b\25\0003\t\30\0005\n\31\0B\b\3\2=\b \a9\b\25\0009\b!\bB\b\1\2=\b\"\a9\b\25\0009\b#\bB\b\1\2=\b$\a9\b\25\0009\b%\b5\t(\0009\n&\0009\n'\n=\n)\tB\b\2\2=\b*\a=\a\25\0064\a\a\0005\b+\0>\b\1\a5\b,\0>\b\2\a5\b-\0>\b\3\a5\b.\0>\b\4\a5\b/\0>\b\5\a5\b0\0>\b\6\a=\a1\6B\5\2\0016\5\0\0'\0062\0B\5\2\0029\5\6\0054\6\0\0B\5\2\0016\5\0\0'\0063\0B\5\2\0029\0054\0054\6\0\0B\5\2\0012\0\0�K\0\1\0\tload luasnip/loaders/from_vscode\17cmp_nvim_lsp\fsources\1\0\1\tname\forgmode\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-l>\nclose\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b┌\b─\b┐\b│\b┘\b─\b└\b│\15completion\17autocomplete\1\0\1\16completeopt\26menu,menuone,noselect\16TextChanged\17TriggerEvent\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\fluasnip\14cmp.types\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2�\17\0\0\a\0M\0�\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\2\25\0019\2\26\0025\3\27\0=\0\28\3B\2\2\0019\2\29\0019\2\26\0025\3\30\0=\0\28\3B\2\2\0019\2\31\0019\2\26\0025\3 \0=\0\28\3B\2\2\0019\2!\0019\2\26\0025\3\"\0=\0\28\3B\2\2\0019\2#\0019\2\26\0025\3$\0=\0\28\3B\2\2\0019\2%\0019\2\26\0025\3&\0=\0\28\3B\2\2\0019\2'\0019\2\26\0025\3(\0=\0\28\3B\2\2\0019\2)\0019\2\26\0025\3*\0=\0+\3B\2\2\0019\2,\0019\2\26\0025\3-\0=\0\28\3B\2\2\0019\2.\0019\2\26\0025\3/\0=\0\28\0035\0046\0005\0051\0005\0060\0=\0062\0055\0063\0=\6\5\0055\0064\0=\0065\5=\0057\4=\0048\3B\2\2\0016\2\0\0009\0029\2'\3:\0B\2\2\0016\2\0\0009\0029\2'\3;\0B\2\2\0016\2\0\0009\0029\2'\3<\0B\2\2\0016\2\0\0009\0029\2'\3=\0B\2\2\0016\2\0\0009\0029\2'\3>\0B\2\2\0016\2\0\0009\0029\2'\3?\0B\2\2\0016\2\0\0009\0029\2'\3@\0B\2\2\0016\2\0\0009\0029\2'\3A\0B\2\2\0016\2\0\0009\0029\2'\3B\0B\2\2\0016\2\0\0009\0029\2'\3C\0B\2\2\0016\2\0\0009\0029\2'\3D\0B\2\2\0016\2\0\0009\0029\2'\3E\0B\2\2\0016\2\0\0009\2F\2)\3,\1=\3G\0026\2\0\0009\2\1\0029\2H\0026\3\0\0009\3\1\0039\3J\0036\4\0\0009\4\1\0049\4H\0049\4K\0045\5L\0B\3\3\2=\3I\2K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6oYautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>ennoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border=\"single\", focusable = false})<CR>cnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border=\"single\", focusable=false})<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR><nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>\bcmd\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2�\6\0\0\5\0 \0.6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\2\r\0B\1\2\0029\1\14\0015\2\16\0005\3\15\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0004\4\0\0=\4\21\0035\4\22\0=\4\23\3=\3\24\2B\1\2\0016\1\25\0009\1\26\1'\2\28\0=\2\27\0016\1\25\0009\1\26\1'\2\30\0=\2\29\0016\1\25\0009\1\26\1)\2c\0=\2\31\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\1\0\1\rfiletype\thare\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl/https://github.com/fwcd/tree-sitter-kotlin\vkotlin\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\2k\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21org_agenda_files\1\0\0\1\2\0\0\22~/Documents/Org/*\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
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
  tabular = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2�\2\0\0\4\0\r\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0026\1\b\0009\1\t\1'\2\n\0B\1\2\0016\1\b\0009\1\t\1'\2\v\0B\1\2\0016\1\b\0009\1\t\1'\2\f\0B\1\2\1K\0\1\0007nnoremap <silent> <leader>b :Telescope buffers<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>Annoremap <silent> <leader><leader> :Telescope find_files<CR>\bcmd\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\2�\5\0\0\2\0\19\0;6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0006\0\0\0009\0\1\0004\1\0\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\16\0'\1\17\0B\0\2\0016\0\18\0B\0\1\1K\0\1\0\29post_theme_configuration\27colorscheme tokyonight\bcmd\28tokyonight_lualine_bold\26tokyonight_dark_float\28tokyonight_dark_sidebar#tokyonight_transparent_sidebar\24tokyonight_sidebars(tokyonight_hide_inactive_statusline\27tokyonight_transparent tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\31tokyonight_terminal_colors\nstorm\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-blade"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/vim-blade"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\2N\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\6n\18concealcursor\17conceallevel\6o\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/vim-markdown"
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
try_loadstring("\27LJ\2\2�\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b┌\b─\b┐\b│\b┘\b─\b└\b│\1\0\4\16hint_prefix\n🍺 \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2�\17\0\0\a\0M\0�\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\2\25\0019\2\26\0025\3\27\0=\0\28\3B\2\2\0019\2\29\0019\2\26\0025\3\30\0=\0\28\3B\2\2\0019\2\31\0019\2\26\0025\3 \0=\0\28\3B\2\2\0019\2!\0019\2\26\0025\3\"\0=\0\28\3B\2\2\0019\2#\0019\2\26\0025\3$\0=\0\28\3B\2\2\0019\2%\0019\2\26\0025\3&\0=\0\28\3B\2\2\0019\2'\0019\2\26\0025\3(\0=\0\28\3B\2\2\0019\2)\0019\2\26\0025\3*\0=\0+\3B\2\2\0019\2,\0019\2\26\0025\3-\0=\0\28\3B\2\2\0019\2.\0019\2\26\0025\3/\0=\0\28\0035\0046\0005\0051\0005\0060\0=\0062\0055\0063\0=\6\5\0055\0064\0=\0065\5=\0057\4=\0048\3B\2\2\0016\2\0\0009\0029\2'\3:\0B\2\2\0016\2\0\0009\0029\2'\3;\0B\2\2\0016\2\0\0009\0029\2'\3<\0B\2\2\0016\2\0\0009\0029\2'\3=\0B\2\2\0016\2\0\0009\0029\2'\3>\0B\2\2\0016\2\0\0009\0029\2'\3?\0B\2\2\0016\2\0\0009\0029\2'\3@\0B\2\2\0016\2\0\0009\0029\2'\3A\0B\2\2\0016\2\0\0009\0029\2'\3B\0B\2\2\0016\2\0\0009\0029\2'\3C\0B\2\2\0016\2\0\0009\0029\2'\3D\0B\2\2\0016\2\0\0009\0029\2'\3E\0B\2\2\0016\2\0\0009\2F\2)\3,\1=\3G\0026\2\0\0009\2\1\0029\2H\0026\3\0\0009\3\1\0039\3J\0036\4\0\0009\4\1\0049\4H\0049\4K\0045\5L\0B\3\3\2=\3I\2K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6oYautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>ennoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border=\"single\", focusable = false})<CR>cnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border=\"single\", focusable=false})<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR><nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>\bcmd\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2�\2\0\0\6\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\f\0005\3\v\0005\4\b\0005\5\t\0=\5\n\4>\4\1\3=\3\r\2=\2\14\1B\0\2\1K\0\1\0\rsections\14lualine_x\1\0\0\1\5\0\0\0\rencoding\15fileformat\rfiletype\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\foptions\1\0\0\25component_separators\1\3\0\0\5\5\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2h\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\2�\5\0\0\2\0\19\0;6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0006\0\0\0009\0\1\0004\1\0\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\16\0'\1\17\0B\0\2\0016\0\18\0B\0\1\1K\0\1\0\29post_theme_configuration\27colorscheme tokyonight\bcmd\28tokyonight_lualine_bold\26tokyonight_dark_float\28tokyonight_dark_sidebar#tokyonight_transparent_sidebar\24tokyonight_sidebars(tokyonight_hide_inactive_statusline\27tokyonight_transparent tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\31tokyonight_terminal_colors\nstorm\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18�6\1\0\0009\1\1\0019\1\4\1'\2\3\0B\1\2\2\18\2\1\0009\1\5\1\18\3\0\0\18\4\0\0B\1\4\2\18\2\1\0009\1\6\1'\3\a\0B\1\3\2\v\1\0\0X\1\2�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0F\0\1\6\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\2\0\0+\3\2\0+\4\2\0+\5\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\2�\tbody\15lsp_expand�\4\0\2\5\0\6\0\n5\2\0\0005\3\1\0009\4\3\0009\4\4\0048\4\4\2=\4\2\0019\4\5\0018\4\4\3=\4\5\1L\1\2\0\tkind\tname\vsource\tmenu\1\0\25\tText\r Text\rFunction\18 Function \rOperator\17ﬦ Operator\nColor\14 Color\nClass\14 Class\vModule\15 Module\rConstant\17 Constant\rProperty\17 Property\vMethod\16 Method \15EnumMember\19 EnumMember\tUnit\r Unit\14Interface\18ﰮ Interface\vStruct\15 Struct\rVariable\17 Variable\fSnippet\14x Snippet\vFolder\15 Folder\nEvent\14 Event\nField\14 Field\18TypeParameter\22 TypeParameter\tFile\r File\nValue\14 Value\16Constructor\20 Constructor\tEnum\r Enum\fKeyword\16 Keyword\14Reference\18 Reference\1\0\5\nemoji\f[Emoji]\tpath\v[Path]\rnvim_lsp\n[LSP]\tcalc\v[Calc]\fluasnip\14[Luasnip]�\1\0\1\4\2\b\1\0316\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\4\0B\2\2\2'\3\5\0B\1\3\1X\1\15�-\1\1\0B\1\1\2\15\0\1\0X\2\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\6\0B\2\2\2'\3\5\0B\1\3\1X\1\2�6\1\a\0B\1\1\1K\0\1\0\4�\3�\rfallback\n<Tab>\6n\n<C-n>\rfeedkeys\15pumvisible\afn\bvim\2u\0\1\4\1\6\1\0186\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\t�6\1\0\0009\1\1\0019\1\3\1-\2\0\0'\3\4\0B\2\2\2'\3\5\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\4�\6n\n<C-p>\rfeedkeys\15pumvisible\afn\bvim\2�\a\1\0\v\0005\0Z6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0023\3\4\0003\4\5\0009\5\6\0005\6\n\0005\a\b\0003\b\a\0=\b\t\a=\a\v\0065\a\14\0004\b\3\0009\t\1\0019\t\f\t9\t\r\t>\t\1\b=\b\15\a=\a\16\0065\a\18\0005\b\17\0=\b\19\a=\a\20\0065\a\22\0003\b\21\0=\b\23\a=\a\24\0065\a\28\0009\b\25\0003\t\26\0005\n\27\0B\b\3\2=\b\29\a9\b\25\0003\t\30\0005\n\31\0B\b\3\2=\b \a9\b\25\0009\b!\bB\b\1\2=\b\"\a9\b\25\0009\b#\bB\b\1\2=\b$\a9\b\25\0009\b%\b5\t(\0009\n&\0009\n'\n=\n)\tB\b\2\2=\b*\a=\a\25\0064\a\a\0005\b+\0>\b\1\a5\b,\0>\b\2\a5\b-\0>\b\3\a5\b.\0>\b\4\a5\b/\0>\b\5\a5\b0\0>\b\6\a=\a1\6B\5\2\0016\5\0\0'\0062\0B\5\2\0029\5\6\0054\6\0\0B\5\2\0016\5\0\0'\0063\0B\5\2\0029\0054\0054\6\0\0B\5\2\0012\0\0�K\0\1\0\tload luasnip/loaders/from_vscode\17cmp_nvim_lsp\fsources\1\0\1\tname\forgmode\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-l>\nclose\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b┌\b─\b┐\b│\b┘\b─\b└\b│\15completion\17autocomplete\1\0\1\16completeopt\26menu,menuone,noselect\16TextChanged\17TriggerEvent\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\fluasnip\14cmp.types\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3�\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\2k\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21org_agenda_files\1\0\0\1\2\0\0\22~/Documents/Org/*\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2�\2\0\0\4\0\r\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0026\1\b\0009\1\t\1'\2\n\0B\1\2\0016\1\b\0009\1\t\1'\2\v\0B\1\2\0016\1\b\0009\1\t\1'\2\f\0B\1\2\1K\0\1\0007nnoremap <silent> <leader>b :Telescope buffers<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>Annoremap <silent> <leader><leader> :Telescope find_files<CR>\bcmd\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2�\6\0\0\5\0 \0.6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\2\r\0B\1\2\0029\1\14\0015\2\16\0005\3\15\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0004\4\0\0=\4\21\0035\4\22\0=\4\23\3=\3\24\2B\1\2\0016\1\25\0009\1\26\1'\2\28\0=\2\27\0016\1\25\0009\1\26\1'\2\30\0=\2\29\0016\1\25\0009\1\26\1)\2c\0=\2\31\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\1\0\1\rfiletype\thare\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl/https://github.com/fwcd/tree-sitter-kotlin\vkotlin\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\2N\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\6n\18concealcursor\17conceallevel\6o\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
