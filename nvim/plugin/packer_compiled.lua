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
    config = { "\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\2\nnumhl\2\nsetup\rgitsigns\frequire\0" },
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
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2^\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\rnightfox\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\2≤\5\0\0\2\0\19\00066\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\t\0'\1\n\0B\0\2\0029\0\v\0B\0\1\0016\0\0\0009\0\f\0'\1\r\0B\0\2\0016\0\0\0009\0\f\0'\1\14\0B\0\2\0016\0\0\0009\0\f\0'\1\15\0B\0\2\0016\0\0\0009\0\f\0'\1\16\0B\0\2\0016\0\0\0009\0\f\0'\1\17\0B\0\2\0016\0\0\0009\0\f\0'\1\18\0B\0\2\1K\0\1\0&highlight! link PmenuSel DiffText&highlight! NormalFloat guibg=None;highlight! LspDiagnosticsVirtualTextWarning guibg=None?highlight! LspDiagnosticsVirtualTextInformation guibg=None8highlight! LspDiagnosticsVirtualTextHint guibg=None9highlight! LspDiagnosticsVirtualTextError guibg=None\bcmd\bset\rnightfox\frequire\30nightfox_italic_variables\28nightfox_italic_strings\29nightfox_italic_keywords\30nightfox_italic_functions\29nightfox_italic_comments\fpalefox\19nightfox_style\6g\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2h\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\2¿\tbody\15lsp_expand˛\4\0\2\5\0\6\0\n5\2\0\0005\3\1\0009\4\3\0009\4\4\0048\4\4\2=\4\2\0019\4\5\0018\4\4\3=\4\5\1L\1\2\0\tkind\tname\vsource\tmenu\1\0\25\tText\rÔî´ Text\rFunction\18Ôûî Function \rOperator\17Ô¨¶ Operator\nColor\14Óà´ Color\nClass\14ÔÉ® Class\vModule\15Ô£ñ Module\rConstant\17Óà¨ Constant\rProperty\17Óò§ Property\vMethod\16Ôûî Method \15EnumMember\19ÔÖù EnumMember\tUnit\rÔëµ Unit\14Interface\18Ô∞Æ Interface\vStruct\15ÔÉä Struct\rVariable\17Óûõ Variable\fSnippet\14x Snippet\vFolder\15ÔÑï Folder\nEvent\14ÔÉß Event\nField\14Óûõ Field\18TypeParameter\22Óòé TypeParameter\tFile\rÔÖõ File\nValue\14Ô¢ü Value\16Constructor\20Ôê• Constructor\tEnum\rÔêµ Enum\fKeyword\16Ô†ä Keyword\14Reference\18Ôöê Reference\1\0\5\nemoji\f[Emoji]\tpath\v[Path]\rnvim_lsp\n[LSP]\tcalc\v[Calc]\fluasnip\14[Luasnip]°\2\0\2\b\1\v\1*6\2\0\0009\2\1\0029\2\2\2B\2\1\2\t\2\0\0X\2\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\6\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\a\0B\2\3\1X\2\21Ä-\2\0\0009\2\b\2B\2\1\2\15\0\2\0X\3\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\t\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\n\0B\2\3\1X\2\2Ä\18\2\1\0B\2\1\1K\0\1\0\2¿\5!<Plug>luasnip-expand-or-jump\23expand_or_jumpable\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ñ\2\0\2\b\1\v\1+6\2\0\0009\2\1\0029\2\2\2B\2\1\2\t\2\0\0X\2\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\6\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\a\0B\2\3\1X\2\22Ä-\2\0\0009\2\b\2)\3ˇˇB\2\2\2\15\0\2\0X\3\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\t\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\n\0B\2\3\1X\2\2Ä\18\2\1\0B\2\1\1K\0\1\0\2¿\5\28<Plug>luasnip-jump-prev\rjumpable\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2£\a\1\0\t\0006\0\\6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0005\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0045\5\f\0004\6\3\0009\a\1\0019\a\n\a9\a\v\a>\a\1\6=\6\r\5=\5\14\0045\5\16\0005\6\15\0=\6\17\5=\5\18\0045\5\20\0003\6\19\0=\6\21\5=\5\22\0045\5\27\0009\6\23\0009\6\24\0065\a\25\0003\b\26\0B\6\3\2=\6\28\0059\6\23\0009\6\24\0065\a\29\0003\b\30\0B\6\3\2=\6\31\0059\6\23\0009\6 \6B\6\1\2=\6!\0059\6\23\0009\6\"\6B\6\1\2=\6#\0059\6\23\0009\6$\0065\a'\0009\b%\0009\b&\b=\b(\aB\6\2\2=\6)\5=\5\23\0044\5\6\0005\6*\0>\6\1\0055\6+\0>\6\2\0055\6,\0>\6\3\0055\6-\0>\6\4\0055\6.\0>\6\5\5=\5/\4B\3\2\0016\3\0\0'\0040\0B\3\2\0029\3\4\0034\4\0\0B\3\2\0019\0031\0029\0032\0035\0043\0B\3\2\0016\3\0\0'\0044\0B\3\2\0029\0035\0034\4\0\0B\3\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-l>\nclose\f<S-Tab>\0\1\3\0\0\6i\6s\n<Tab>\1\0\0\0\1\3\0\0\6i\6s\tmode\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\15completion\17autocomplete\1\0\1\16completeopt\26menu,menuone,noselect\16TextChanged\17TriggerEvent\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\14cmp.types\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2º\14\0\0\6\0005\0ä\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\2\25\0019\2\26\0025\3\27\0=\0\28\3B\2\2\0019\2\29\0019\2\26\0025\3\30\0=\0\28\3B\2\2\0019\2\31\0019\2\26\0025\3 \0=\0\28\3B\2\2\0016\2\0\0009\2!\2'\3\"\0B\2\2\0016\2\0\0009\2!\2'\3#\0B\2\2\0016\2\0\0009\2!\2'\3$\0B\2\2\0016\2\0\0009\2!\2'\3%\0B\2\2\0016\2\0\0009\2!\2'\3&\0B\2\2\0016\2\0\0009\2!\2'\3'\0B\2\2\0016\2\0\0009\2!\2'\3(\0B\2\2\0016\2\0\0009\2!\2'\3)\0B\2\2\0016\2\0\0009\2!\2'\3*\0B\2\2\0016\2\0\0009\2!\2'\3+\0B\2\2\0016\2\0\0009\2!\2'\3,\0B\2\2\0016\2\0\0009\2!\2'\3-\0B\2\2\0016\2\0\0009\2.\2)\3,\1=\3/\0026\2\0\0009\2\1\0029\0020\0026\3\0\0009\3\1\0039\0032\0036\4\0\0009\4\1\0049\0040\0049\0043\0045\0054\0B\3\3\2=\0031\2K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6oYautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>ennoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border=\"single\", focusable = false})<CR>cnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border=\"single\", focusable=false})<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR><nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>\bcmd\1\0\0\17intelephense\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2É\6\0\0\4\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0004\3\0\0=\3\t\0025\3\n\0=\3\v\2=\2\f\1B\0\2\0016\0\r\0009\0\14\0'\1\16\0=\1\15\0006\0\r\0009\0\14\0'\1\18\0=\1\17\0006\0\r\0009\0\14\0)\1c\0=\1\19\0006\0\0\0'\1\20\0B\0\2\0029\0\21\0B\0\1\0025\1\26\0005\2\23\0005\3\24\0=\3\25\2=\2\27\1=\1\22\0K\0\1\0\17install_info\1\0\1\rfiletype\fcrystal\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl'~/Code/Crystal/tree-sitter-crystal\fcrystal\23get_parser_configs\28nvim-treesitter.parsers\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  tabular = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2‰\2\0\0\4\0\r\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0026\1\b\0009\1\t\1'\2\n\0B\1\2\0016\1\b\0009\1\t\1'\2\v\0B\1\2\0016\1\b\0009\1\t\1'\2\f\0B\1\2\1K\0\1\0007nnoremap <silent> <leader>b :Telescope buffers<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>Annoremap <silent> <leader><leader> :Telescope find_files<CR>\bcmd\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\2N\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\6n\18concealcursor\17conceallevel\6o\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/vim-markdown"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2≈\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\17handler_opts\vborder\1\0\0\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\1\0\4\16hint_prefix\nüç∫ \14doc_lines\3\5\tbind\2\23trigger_on_newline\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2‰\2\0\0\4\0\r\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0026\1\b\0009\1\t\1'\2\n\0B\1\2\0016\1\b\0009\1\t\1'\2\v\0B\1\2\0016\1\b\0009\1\t\1'\2\f\0B\1\2\1K\0\1\0007nnoremap <silent> <leader>b :Telescope buffers<CR>9nnoremap <silent> <leader>g :Telescope live_grep<CR>Annoremap <silent> <leader><leader> :Telescope find_files<CR>\bcmd\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\2¿\tbody\15lsp_expand˛\4\0\2\5\0\6\0\n5\2\0\0005\3\1\0009\4\3\0009\4\4\0048\4\4\2=\4\2\0019\4\5\0018\4\4\3=\4\5\1L\1\2\0\tkind\tname\vsource\tmenu\1\0\25\tText\rÔî´ Text\rFunction\18Ôûî Function \rOperator\17Ô¨¶ Operator\nColor\14Óà´ Color\nClass\14ÔÉ® Class\vModule\15Ô£ñ Module\rConstant\17Óà¨ Constant\rProperty\17Óò§ Property\vMethod\16Ôûî Method \15EnumMember\19ÔÖù EnumMember\tUnit\rÔëµ Unit\14Interface\18Ô∞Æ Interface\vStruct\15ÔÉä Struct\rVariable\17Óûõ Variable\fSnippet\14x Snippet\vFolder\15ÔÑï Folder\nEvent\14ÔÉß Event\nField\14Óûõ Field\18TypeParameter\22Óòé TypeParameter\tFile\rÔÖõ File\nValue\14Ô¢ü Value\16Constructor\20Ôê• Constructor\tEnum\rÔêµ Enum\fKeyword\16Ô†ä Keyword\14Reference\18Ôöê Reference\1\0\5\nemoji\f[Emoji]\tpath\v[Path]\rnvim_lsp\n[LSP]\tcalc\v[Calc]\fluasnip\14[Luasnip]°\2\0\2\b\1\v\1*6\2\0\0009\2\1\0029\2\2\2B\2\1\2\t\2\0\0X\2\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\6\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\a\0B\2\3\1X\2\21Ä-\2\0\0009\2\b\2B\2\1\2\15\0\2\0X\3\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\t\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\n\0B\2\3\1X\2\2Ä\18\2\1\0B\2\1\1K\0\1\0\2¿\5!<Plug>luasnip-expand-or-jump\23expand_or_jumpable\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ñ\2\0\2\b\1\v\1+6\2\0\0009\2\1\0029\2\2\2B\2\1\2\t\2\0\0X\2\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\6\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\a\0B\2\3\1X\2\22Ä-\2\0\0009\2\b\2)\3ˇˇB\2\2\2\15\0\2\0X\3\14Ä6\2\0\0009\2\1\0029\2\3\0026\3\0\0009\3\4\0039\3\5\3'\4\t\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2'\4\n\0B\2\3\1X\2\2Ä\18\2\1\0B\2\1\1K\0\1\0\2¿\5\28<Plug>luasnip-jump-prev\rjumpable\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2£\a\1\0\t\0006\0\\6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0005\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0045\5\f\0004\6\3\0009\a\1\0019\a\n\a9\a\v\a>\a\1\6=\6\r\5=\5\14\0045\5\16\0005\6\15\0=\6\17\5=\5\18\0045\5\20\0003\6\19\0=\6\21\5=\5\22\0045\5\27\0009\6\23\0009\6\24\0065\a\25\0003\b\26\0B\6\3\2=\6\28\0059\6\23\0009\6\24\0065\a\29\0003\b\30\0B\6\3\2=\6\31\0059\6\23\0009\6 \6B\6\1\2=\6!\0059\6\23\0009\6\"\6B\6\1\2=\6#\0059\6\23\0009\6$\0065\a'\0009\b%\0009\b&\b=\b(\aB\6\2\2=\6)\5=\5\23\0044\5\6\0005\6*\0>\6\1\0055\6+\0>\6\2\0055\6,\0>\6\3\0055\6-\0>\6\4\0055\6.\0>\6\5\5=\5/\4B\3\2\0016\3\0\0'\0040\0B\3\2\0029\3\4\0034\4\0\0B\3\2\0019\0031\0029\0032\0035\0043\0B\3\2\0016\3\0\0'\0044\0B\3\2\0029\0035\0034\4\0\0B\3\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-l>\nclose\f<S-Tab>\0\1\3\0\0\6i\6s\n<Tab>\1\0\0\0\1\3\0\0\6i\6s\tmode\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\1\17winhighlight\28FloatBorder:FloatBorder\1\t\0\0\b‚îå\b‚îÄ\b‚îê\b‚îÇ\b‚îò\b‚îÄ\b‚îî\b‚îÇ\15completion\17autocomplete\1\0\1\16completeopt\26menu,menuone,noselect\16TextChanged\17TriggerEvent\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\14cmp.types\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\2≤\5\0\0\2\0\19\00066\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\t\0'\1\n\0B\0\2\0029\0\v\0B\0\1\0016\0\0\0009\0\f\0'\1\r\0B\0\2\0016\0\0\0009\0\f\0'\1\14\0B\0\2\0016\0\0\0009\0\f\0'\1\15\0B\0\2\0016\0\0\0009\0\f\0'\1\16\0B\0\2\0016\0\0\0009\0\f\0'\1\17\0B\0\2\0016\0\0\0009\0\f\0'\1\18\0B\0\2\1K\0\1\0&highlight! link PmenuSel DiffText&highlight! NormalFloat guibg=None;highlight! LspDiagnosticsVirtualTextWarning guibg=None?highlight! LspDiagnosticsVirtualTextInformation guibg=None8highlight! LspDiagnosticsVirtualTextHint guibg=None9highlight! LspDiagnosticsVirtualTextError guibg=None\bcmd\bset\rnightfox\frequire\30nightfox_italic_variables\28nightfox_italic_strings\29nightfox_italic_keywords\30nightfox_italic_functions\29nightfox_italic_comments\fpalefox\19nightfox_style\6g\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\2\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2^\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\rnightfox\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2º\14\0\0\6\0005\0ä\0016\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\2\25\0019\2\26\0025\3\27\0=\0\28\3B\2\2\0019\2\29\0019\2\26\0025\3\30\0=\0\28\3B\2\2\0019\2\31\0019\2\26\0025\3 \0=\0\28\3B\2\2\0016\2\0\0009\2!\2'\3\"\0B\2\2\0016\2\0\0009\2!\2'\3#\0B\2\2\0016\2\0\0009\2!\2'\3$\0B\2\2\0016\2\0\0009\2!\2'\3%\0B\2\2\0016\2\0\0009\2!\2'\3&\0B\2\2\0016\2\0\0009\2!\2'\3'\0B\2\2\0016\2\0\0009\2!\2'\3(\0B\2\2\0016\2\0\0009\2!\2'\3)\0B\2\2\0016\2\0\0009\2!\2'\3*\0B\2\2\0016\2\0\0009\2!\2'\3+\0B\2\2\0016\2\0\0009\2!\2'\3,\0B\2\2\0016\2\0\0009\2!\2'\3-\0B\2\2\0016\2\0\0009\2.\2)\3,\1=\3/\0026\2\0\0009\2\1\0029\0020\0026\3\0\0009\3\1\0039\0032\0036\4\0\0009\4\1\0049\0040\0049\0043\0045\0054\0B\3\3\2=\0031\2K\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6oYautocmd CursorHold, CursorHoldI * :lua vim.lsp.diagnostic.show_line_diagnostic()<CR>ennoremap <silent> ]g :lua vim.lsp.diagnostic.goto_next({border=\"single\", focusable = false})<CR>cnnoremap <silent> [g :lua vim.lsp.diagnostic.goto_prev({border=\"single\", focusable=false})<CR>Bnnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>>nnoremap <silent> <leader>r :lua vim.lsp.buf.rename()<CR>Jvnoremap <silent> <leader>ac :lua vim.lsp.buf.range_code_action()<CR>Dnnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>;nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>?nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>5nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>;nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR><nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>\bcmd\1\0\0\17intelephense\1\0\0\thtml\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2É\6\0\0\4\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0004\3\0\0=\3\t\0025\3\n\0=\3\v\2=\2\f\1B\0\2\0016\0\r\0009\0\14\0'\1\16\0=\1\15\0006\0\r\0009\0\14\0'\1\18\0=\1\17\0006\0\r\0009\0\14\0)\1c\0=\1\19\0006\0\0\0'\1\20\0B\0\2\0029\0\21\0B\0\1\0025\1\26\0005\2\23\0005\3\24\0=\3\25\2=\2\27\1=\1\22\0K\0\1\0\17install_info\1\0\1\rfiletype\fcrystal\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl'~/Code/Crystal/tree-sitter-crystal\fcrystal\23get_parser_configs\28nvim-treesitter.parsers\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2h\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\2N\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\6n\18concealcursor\17conceallevel\6o\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
