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
  catppuccin = {
    config = { "\27LJ\2\nË\a\0\0\a\0\25\0\0296\0\0\0'\2\1\0005\3\2\0005\4\3\0=\4\4\0035\4\5\0005\5\6\0005\6\a\0=\6\b\0055\6\t\0=\6\n\5=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\18\3B\0\3\0016\0\19\0009\0\20\0'\1\22\0=\1\21\0006\0\19\0009\0\23\0'\2\24\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\14macchiato\23catppuccin_flavour\6g\bvim\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\fneotree\1\0\3\14show_root\1\fenabled\1\22transparent_panel\1\rnvimtree\1\0\3\14show_root\1\fenabled\2\22transparent_panel\1\15native_lsp\15underlines\1\0\4\rwarnings\14underline\nhints\14underline\verrors\14underline\16information\14underline\17virtual_text\1\0\4\rwarnings\vitalic\nhints\vitalic\verrors\vitalic\16information\vitalic\1\0\1\fenabled\2\1\0\21\16lsp_trouble\1\14which_key\2\15treesitter\2\vbarbar\1\15lightspeed\1\vnotify\2\20symbols_outline\2\15telekasten\2\bhop\1\15ts_rainbow\1\rmarkdown\2\15bufferline\2\bcmp\2\tfern\1\14vim_sneak\1\vneogit\1\14dashboard\2\14telescope\2\rgitsigns\2\14gitgutter\1\rlsp_saga\1\vstyles\1\0\f\14functions\tNONE\ntypes\tNONE\nloops\tNONE\17conditionals\vitalic\rcomments\vitalic\15properties\tNONE\14operators\tNONE\rbooleans\tNONE\fnumbers\tNONE\14variables\tNONE\fstrings\tNONE\rkeywords\tNONE\1\0\2\27transparent_background\1\16term_colors\1\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
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
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
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
    config = { "\27LJ\2\nÖ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\rposition\beol\ndelay\3Ë\a\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\né\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\3\tbind\2\23trigger_on_newline\2\14doc_lines\3\n\nsetup\18lsp_signature\frequire\0" },
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
    config = { "\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 Ü\5\1\0\b\0 \00025\0\2\0003\1\0\0>\1\1\0005\1\1\0=\1\3\0006\1\4\0'\3\5\0B\1\2\0029\1\6\0015\3\b\0005\4\a\0=\4\t\0035\4\r\0004\5\3\0005\6\n\0005\a\v\0=\a\f\6>\6\1\5=\5\14\0044\5\3\0005\6\15\0005\a\16\0=\a\f\0065\a\17\0=\a\18\6>\6\1\5=\5\19\0045\5\20\0005\6\21\0>\6\2\5=\5\22\0044\5\3\0005\6\23\0>\6\1\5=\5\24\0044\5\3\0005\6\25\0005\a\26\0=\a\f\6>\6\1\5=\5\27\0044\5\3\0005\6\28\0005\a\29\0=\a\f\6>\6\1\5=\5\30\4=\4\31\3B\1\2\1K\0\1\0\rsections\14lualine_z\1\0\1\nright\bÓÇ¥\1\2\0\0\rprogress\14lualine_y\1\0\1\tleft\bÓÇ∂\1\2\0\0\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\1\2\0\0\a%=\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\0\1\nright\bÓÇ¥\1\2\2\0\16diagnostics\19always_visible\2\21update_in_insert\2\14lualine_a\1\0\0\14separator\1\0\1\tleft\bÓÇ∂\1\2\0\0\tmode\foptions\1\0\0\1\0\4\ntheme\15catppuccin\17globalstatus\2\23section_separators\5\25component_separators\5\nsetup\flualine\frequire\fpadding\1\0\1\ncolor\21lualine_c_normal\1\0\1\tleft\3\1\0\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\nÎ\3\0\0\a\0\18\0B5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\5\0'\5\n\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\a\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\f\0'\5\16\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\14\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\24:MoveHBlock(-1)<CR>\23:MoveHBlock(1)<CR>\23:MoveHChar(-1)<CR>\n<C-h>\22:MoveHChar(1)<CR>\n<C-l>\22:MoveBlock(1)<CR>\23:MoveBlock(-1)<CR>\6v\21:MoveLine(1)<CR>\n<C-j>\22:MoveLine(-1)<CR>\n<C-k>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire<\0\2\5\1\3\0\b9\2\1\1=\2\0\1-\2\0\0009\2\2\0029\4\1\1B\2\2\2=\2\1\1L\1\2\0\2¿\rsymbolic\tkind\tmenuO\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpable“\6\1\0\r\0005\0_6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\v\0005\a\n\0=\a\f\0063\a\r\0=\a\14\6=\6\15\0055\6\23\0009\a\16\0009\t\16\0009\t\17\t5\v\20\0009\f\18\0009\f\19\f=\f\21\vB\t\2\0025\n\22\0B\a\3\2=\a\24\0069\a\16\0009\t\16\0009\t\25\t5\v\26\0009\f\18\0009\f\19\f=\f\21\vB\t\2\0025\n\27\0B\a\3\2=\a\28\0069\a\16\0003\t\29\0005\n\30\0B\a\3\2=\a\31\0069\a\16\0003\t \0005\n!\0B\a\3\2=\a\"\0069\a\16\0009\a#\aB\a\1\2=\a$\0069\a\16\0009\a%\aB\a\1\2=\a&\6=\6\16\0055\6'\0=\6(\0054\6\6\0005\a)\0>\a\1\0065\a*\0>\a\2\0065\a+\0>\a\3\0065\a,\0>\a\4\0065\a-\0>\a\5\6=\6.\5B\3\2\0016\3\0\0'\5/\0B\3\2\0029\3\4\3B\3\1\0019\0030\0019\0031\0035\0052\0B\3\2\0016\3\0\0'\0053\0B\3\2\0029\0034\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\2\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÉ\1\0\1\6\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\3\2\0'\4\3\0'\5\4\0B\1\4\2\18\3\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutil5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim∫\26\1\0\r\0õ\1\0–\0026\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0025\1\5\0=\1\4\0009\1\6\0009\1\a\0019\1\b\0015\2\n\0=\2\t\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\v\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\f\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\r\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\14\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\15\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\16\0019\1\6\0009\1\a\0019\1\b\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\6\0009\1\a\0019\1\b\0015\2\23\0005\3\22\0=\3\24\2=\2\21\0016\1\25\0'\3\26\0B\1\2\0029\1\27\1\18\3\0\0B\1\2\2\18\0\1\0006\1\25\0'\3\28\0B\1\2\0029\2\29\0019\2\30\0025\4\31\0=\0 \0045\5!\0=\5\"\4B\2\2\0019\2#\0019\2\30\0025\4$\0=\0 \4B\2\2\0019\2%\0019\2\30\0025\4&\0=\0 \4B\2\2\0019\2'\0019\2\30\0025\4(\0=\0 \4B\2\2\0019\2)\0019\2\30\0025\4*\0=\0 \4B\2\2\0019\2+\0019\2\30\0025\4,\0=\0 \4B\2\2\0019\2-\0019\2\30\0025\4.\0=\0 \4B\2\2\0019\2/\0019\2\30\0025\0040\0=\0 \4B\2\2\0019\0021\0019\2\30\0025\0042\0=\0003\4B\2\2\0019\0024\0019\2\30\0025\0045\0=\0 \4B\2\2\0019\0026\0019\2\30\0025\0047\0=\0 \4B\2\2\0019\0028\0019\2\30\0025\0049\0=\0 \0045\5:\0=\5\"\0043\5;\0=\5<\4B\2\2\0019\2=\0019\2\30\0025\4>\0=\0 \0045\5E\0005\6@\0005\a?\0=\aA\0065\aB\0=\a\a\0065\aC\0=\aD\6=\6F\5=\5G\4B\2\2\0019\2H\0019\2\30\0025\4I\0=\0 \0045\5M\0005\6K\0005\aJ\0=\aL\6=\6N\0055\6P\0005\aO\0=\aQ\6=\6R\5=\5S\4B\2\2\0016\2\0\0009\2T\0026\4U\0009\4V\4'\5W\0B\2\3\0026\3X\0009\3Y\3\18\5\2\0'\6Z\0B\3\3\0016\3X\0009\3Y\3\18\5\2\0'\6[\0B\3\3\0019\3\\\0019\3\30\0035\5^\0005\6]\0=\6\"\0055\6m\0005\a`\0005\b_\0=\2V\b=\ba\a5\bc\0005\tb\0=\td\b=\be\a5\bi\0006\t\0\0009\tf\t9\tg\t'\vh\0+\f\2\0B\t\3\2=\tj\b=\bk\a5\bl\0=\bQ\a=\an\6=\6S\5B\3\2\0015\3o\0'\4p\0006\5\0\0009\5q\0059\5r\0055\at\0005\bs\0=\bu\aB\5\2\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bx\0'\ty\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bz\0'\t{\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\b|\0'\t}\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\b~\0'\t\127\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÄ\0'\tÅ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÇ\0'\tÉ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aÑ\0'\bÇ\0'\tÖ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÜ\0'\tá\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bà\0'\tâ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bä\0'\tã\0\18\n\4\0'\vå\0&\t\v\t\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bç\0'\té\0\18\n\4\0'\vå\0&\t\v\t\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5è\5'\aê\0005\bë\0003\tí\0=\tì\bB\5\3\0016\5\0\0009\5î\5)\6,\1=\6ï\0056\5\0\0009\5\1\0059\5ñ\0056\6\0\0009\6\1\0069\6ò\0066\b\0\0009\b\1\b9\bñ\b9\bô\b5\tö\0B\6\3\2=\6ó\0052\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6o\rcallback\0\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd#:lua vim.diagnostic.goto_next(\a]g\n)<CR>#:lua vim.diagnostic.goto_prev(\a[g&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\20nvim_set_keymap\nfloat\1\0\0\1\0\1\14focusable\1\vconfig\15diagnostic#{popup_opts={border='single'}}\1\0\2\vsilent\2\fnoremap\2\bLua\1\0\0\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\rsettings\vredhat\14telemetry\1\0\0\1\0\1\fenabled\1\tyaml\1\0\0\fschemas\1\0\0\1\0\1`https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json\30docker-compose.{yml,yaml}\1\0\0\vyamlls\17init_options\nvetur\1\0\0\vformat\1\0\2\24scriptInitialIndent\2\23styleInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\vscript\2\18interpolation\2\18templateProps\2\1\0\0\nvuels\rroot_dir\0\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\bcmd\1\3\0\0\vclangd\29--header-insertion=never\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\1\2\0\0\vutf-32\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nﬂ\5\0\0\6\0\28\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0004\5\0\0=\5\17\0045\5\18\0=\5\19\4=\4\20\3B\1\2\0016\1\21\0009\1\22\1'\2\24\0=\2\23\0016\1\21\0009\1\22\1'\2\26\0=\2\25\0016\1\21\0009\1\22\1)\2c\0=\2\27\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\24toggle_query_editor\6o\14goto_node\t<cr>\vupdate\6R\14show_help\6?\30toggle_injected_languages\6t\21toggle_hl_groups\6i\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
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
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/spaceless.nvim",
    url = "https://github.com/lewis6991/spaceless.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n…\b\0\0\a\0\"\0J6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\n\0=\4\v\3=\3\r\2B\0\2\0015\0\14\0006\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0\18\6\0\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\21\0'\5\22\0\18\6\0\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\23\0'\5\24\0\18\6\0\0B\1\5\0016\1\15\0009\1\25\1'\3\26\0B\1\2\0016\1\15\0009\1\25\1'\3\27\0B\1\2\0016\1\15\0009\1\25\1'\3\28\0B\1\2\0016\1\15\0009\1\25\1'\3\29\0B\1\2\0016\1\15\0009\1\25\1'\3\30\0B\1\2\0016\1\15\0009\1\25\1'\3\31\0B\1\2\0016\1\15\0009\1\25\1'\3 \0B\1\2\0016\1\15\0009\1\25\1'\3!\0B\1\2\1K\0\1\0003highlight! TelescopeResultsTitle guifg=#2328310highlight! link TelescopeBorder NormalFloat1highlight! link TelescopePromptBorder Visual1highlight! link TelescopePromptNormal Visual7highlight! link TelescopePreviewNormal NormalFloat7highlight! link TelescopeResultsNormal NormalFloatChighlight! link TelescopePromptTitle DiagnosticVirtualTextInfoDhighlight! link TelescopePreviewTitle DiagnosticVirtualTextHint\bcmd\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\rdefaults\1\0\0\16borderchars\1\t\0\0\6 \6 \6 \6 \6 \6 \6 \6 \18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\25file_ignore_patterns\1\0\3\17entry_prefix\a  \20selection_caret\a  \18prompt_prefix\v ÔÄÇ  \1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\nd\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["vim-qml"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/vim-qml",
    url = "https://github.com/peterhoeg/vim-qml"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: spaceless.nvim
time([[Config for spaceless.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0", "config", "spaceless.nvim")
time([[Config for spaceless.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\nÎ\3\0\0\a\0\18\0B5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\5\0'\5\n\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\a\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\f\0'\5\16\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\t\0'\4\14\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\24:MoveHBlock(-1)<CR>\23:MoveHBlock(1)<CR>\23:MoveHChar(-1)<CR>\n<C-h>\22:MoveHChar(1)<CR>\n<C-l>\22:MoveBlock(1)<CR>\23:MoveBlock(-1)<CR>\6v\21:MoveLine(1)<CR>\n<C-j>\22:MoveLine(-1)<CR>\n<C-k>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n…\b\0\0\a\0\"\0J6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\n\0=\4\v\3=\3\r\2B\0\2\0015\0\14\0006\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0\18\6\0\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\21\0'\5\22\0\18\6\0\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\23\0'\5\24\0\18\6\0\0B\1\5\0016\1\15\0009\1\25\1'\3\26\0B\1\2\0016\1\15\0009\1\25\1'\3\27\0B\1\2\0016\1\15\0009\1\25\1'\3\28\0B\1\2\0016\1\15\0009\1\25\1'\3\29\0B\1\2\0016\1\15\0009\1\25\1'\3\30\0B\1\2\0016\1\15\0009\1\25\1'\3\31\0B\1\2\0016\1\15\0009\1\25\1'\3 \0B\1\2\0016\1\15\0009\1\25\1'\3!\0B\1\2\1K\0\1\0003highlight! TelescopeResultsTitle guifg=#2328310highlight! link TelescopeBorder NormalFloat1highlight! link TelescopePromptBorder Visual1highlight! link TelescopePromptNormal Visual7highlight! link TelescopePreviewNormal NormalFloat7highlight! link TelescopeResultsNormal NormalFloatChighlight! link TelescopePromptTitle DiagnosticVirtualTextInfoDhighlight! link TelescopePreviewTitle DiagnosticVirtualTextHint\bcmd\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\rdefaults\1\0\0\16borderchars\1\t\0\0\6 \6 \6 \6 \6 \6 \6 \6 \18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\25file_ignore_patterns\1\0\3\17entry_prefix\a  \20selection_caret\a  \18prompt_prefix\v ÔÄÇ  \1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 Ü\5\1\0\b\0 \00025\0\2\0003\1\0\0>\1\1\0005\1\1\0=\1\3\0006\1\4\0'\3\5\0B\1\2\0029\1\6\0015\3\b\0005\4\a\0=\4\t\0035\4\r\0004\5\3\0005\6\n\0005\a\v\0=\a\f\6>\6\1\5=\5\14\0044\5\3\0005\6\15\0005\a\16\0=\a\f\0065\a\17\0=\a\18\6>\6\1\5=\5\19\0045\5\20\0005\6\21\0>\6\2\5=\5\22\0044\5\3\0005\6\23\0>\6\1\5=\5\24\0044\5\3\0005\6\25\0005\a\26\0=\a\f\6>\6\1\5=\5\27\0044\5\3\0005\6\28\0005\a\29\0=\a\f\6>\6\1\5=\5\30\4=\4\31\3B\1\2\1K\0\1\0\rsections\14lualine_z\1\0\1\nright\bÓÇ¥\1\2\0\0\rprogress\14lualine_y\1\0\1\tleft\bÓÇ∂\1\2\0\0\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\1\2\0\0\a%=\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\0\1\nright\bÓÇ¥\1\2\2\0\16diagnostics\19always_visible\2\21update_in_insert\2\14lualine_a\1\0\0\14separator\1\0\1\tleft\bÓÇ∂\1\2\0\0\tmode\foptions\1\0\0\1\0\4\ntheme\15catppuccin\17globalstatus\2\23section_separators\5\25component_separators\5\nsetup\flualine\frequire\fpadding\1\0\1\ncolor\21lualine_c_normal\1\0\1\tleft\3\1\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nË\a\0\0\a\0\25\0\0296\0\0\0'\2\1\0005\3\2\0005\4\3\0=\4\4\0035\4\5\0005\5\6\0005\6\a\0=\6\b\0055\6\t\0=\6\n\5=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\18\3B\0\3\0016\0\19\0009\0\20\0'\1\22\0=\1\21\0006\0\19\0009\0\23\0'\2\24\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\14macchiato\23catppuccin_flavour\6g\bvim\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\fneotree\1\0\3\14show_root\1\fenabled\1\22transparent_panel\1\rnvimtree\1\0\3\14show_root\1\fenabled\2\22transparent_panel\1\15native_lsp\15underlines\1\0\4\rwarnings\14underline\nhints\14underline\verrors\14underline\16information\14underline\17virtual_text\1\0\4\rwarnings\vitalic\nhints\vitalic\verrors\vitalic\16information\vitalic\1\0\1\fenabled\2\1\0\21\16lsp_trouble\1\14which_key\2\15treesitter\2\vbarbar\1\15lightspeed\1\vnotify\2\20symbols_outline\2\15telekasten\2\bhop\1\15ts_rainbow\1\rmarkdown\2\15bufferline\2\bcmp\2\tfern\1\14vim_sneak\1\vneogit\1\14dashboard\2\14telescope\2\rgitsigns\2\14gitgutter\1\rlsp_saga\1\vstyles\1\0\f\14functions\tNONE\ntypes\tNONE\nloops\tNONE\17conditionals\vitalic\rcomments\vitalic\15properties\tNONE\14operators\tNONE\rbooleans\tNONE\fnumbers\tNONE\14variables\tNONE\fstrings\tNONE\rkeywords\tNONE\1\0\2\27transparent_background\1\16term_colors\1\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÖ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\rposition\beol\ndelay\3Ë\a\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire<\0\2\5\1\3\0\b9\2\1\1=\2\0\1-\2\0\0009\2\2\0029\4\1\1B\2\2\2=\2\1\1L\1\2\0\2¿\rsymbolic\tkind\tmenuO\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpable“\6\1\0\r\0005\0_6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\v\0005\a\n\0=\a\f\0063\a\r\0=\a\14\6=\6\15\0055\6\23\0009\a\16\0009\t\16\0009\t\17\t5\v\20\0009\f\18\0009\f\19\f=\f\21\vB\t\2\0025\n\22\0B\a\3\2=\a\24\0069\a\16\0009\t\16\0009\t\25\t5\v\26\0009\f\18\0009\f\19\f=\f\21\vB\t\2\0025\n\27\0B\a\3\2=\a\28\0069\a\16\0003\t\29\0005\n\30\0B\a\3\2=\a\31\0069\a\16\0003\t \0005\n!\0B\a\3\2=\a\"\0069\a\16\0009\a#\aB\a\1\2=\a$\0069\a\16\0009\a%\aB\a\1\2=\a&\6=\6\16\0055\6'\0=\6(\0054\6\6\0005\a)\0>\a\1\0065\a*\0>\a\2\0065\a+\0>\a\3\0065\a,\0>\a\4\0065\a-\0>\a\5\6=\6.\5B\3\2\0016\3\0\0'\5/\0B\3\2\0029\3\4\3B\3\1\0019\0030\0019\0031\0035\0052\0B\3\2\0016\3\0\0'\0053\0B\3\2\0029\0034\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\2\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÉ\1\0\1\6\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\3\2\0'\4\3\0'\5\4\0B\1\4\2\18\3\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutil5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim∫\26\1\0\r\0õ\1\0–\0026\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0025\1\5\0=\1\4\0009\1\6\0009\1\a\0019\1\b\0015\2\n\0=\2\t\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\v\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\f\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\r\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\14\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\15\0019\1\6\0009\1\a\0019\1\b\1+\2\2\0=\2\16\0019\1\6\0009\1\a\0019\1\b\0015\2\19\0005\3\18\0=\3\20\2=\2\17\0019\1\6\0009\1\a\0019\1\b\0015\2\23\0005\3\22\0=\3\24\2=\2\21\0016\1\25\0'\3\26\0B\1\2\0029\1\27\1\18\3\0\0B\1\2\2\18\0\1\0006\1\25\0'\3\28\0B\1\2\0029\2\29\0019\2\30\0025\4\31\0=\0 \0045\5!\0=\5\"\4B\2\2\0019\2#\0019\2\30\0025\4$\0=\0 \4B\2\2\0019\2%\0019\2\30\0025\4&\0=\0 \4B\2\2\0019\2'\0019\2\30\0025\4(\0=\0 \4B\2\2\0019\2)\0019\2\30\0025\4*\0=\0 \4B\2\2\0019\2+\0019\2\30\0025\4,\0=\0 \4B\2\2\0019\2-\0019\2\30\0025\4.\0=\0 \4B\2\2\0019\2/\0019\2\30\0025\0040\0=\0 \4B\2\2\0019\0021\0019\2\30\0025\0042\0=\0003\4B\2\2\0019\0024\0019\2\30\0025\0045\0=\0 \4B\2\2\0019\0026\0019\2\30\0025\0047\0=\0 \4B\2\2\0019\0028\0019\2\30\0025\0049\0=\0 \0045\5:\0=\5\"\0043\5;\0=\5<\4B\2\2\0019\2=\0019\2\30\0025\4>\0=\0 \0045\5E\0005\6@\0005\a?\0=\aA\0065\aB\0=\a\a\0065\aC\0=\aD\6=\6F\5=\5G\4B\2\2\0019\2H\0019\2\30\0025\4I\0=\0 \0045\5M\0005\6K\0005\aJ\0=\aL\6=\6N\0055\6P\0005\aO\0=\aQ\6=\6R\5=\5S\4B\2\2\0016\2\0\0009\2T\0026\4U\0009\4V\4'\5W\0B\2\3\0026\3X\0009\3Y\3\18\5\2\0'\6Z\0B\3\3\0016\3X\0009\3Y\3\18\5\2\0'\6[\0B\3\3\0019\3\\\0019\3\30\0035\5^\0005\6]\0=\6\"\0055\6m\0005\a`\0005\b_\0=\2V\b=\ba\a5\bc\0005\tb\0=\td\b=\be\a5\bi\0006\t\0\0009\tf\t9\tg\t'\vh\0+\f\2\0B\t\3\2=\tj\b=\bk\a5\bl\0=\bQ\a=\an\6=\6S\5B\3\2\0015\3o\0'\4p\0006\5\0\0009\5q\0059\5r\0055\at\0005\bs\0=\bu\aB\5\2\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bx\0'\ty\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bz\0'\t{\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\b|\0'\t}\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\b~\0'\t\127\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÄ\0'\tÅ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÇ\0'\tÉ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aÑ\0'\bÇ\0'\tÖ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bÜ\0'\tá\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bà\0'\tâ\0\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bä\0'\tã\0\18\n\4\0'\vå\0&\t\v\t\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5v\5'\aw\0'\bç\0'\té\0\18\n\4\0'\vå\0&\t\v\t\18\n\3\0B\5\5\0016\5\0\0009\5f\0059\5è\5'\aê\0005\bë\0003\tí\0=\tì\bB\5\3\0016\5\0\0009\5î\5)\6,\1=\6ï\0056\5\0\0009\5\1\0059\5ñ\0056\6\0\0009\6\1\0069\6ò\0066\b\0\0009\b\1\b9\bñ\b9\bô\b5\tö\0B\6\3\2=\6ó\0052\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6o\rcallback\0\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd#:lua vim.diagnostic.goto_next(\a]g\n)<CR>#:lua vim.diagnostic.goto_prev(\a[g&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\20nvim_set_keymap\nfloat\1\0\0\1\0\1\14focusable\1\vconfig\15diagnostic#{popup_opts={border='single'}}\1\0\2\vsilent\2\fnoremap\2\bLua\1\0\0\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\rsettings\vredhat\14telemetry\1\0\0\1\0\1\fenabled\1\tyaml\1\0\0\fschemas\1\0\0\1\0\1`https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json\30docker-compose.{yml,yaml}\1\0\0\vyamlls\17init_options\nvetur\1\0\0\vformat\1\0\2\24scriptInitialIndent\2\23styleInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\vscript\2\18interpolation\2\18templateProps\2\1\0\0\nvuels\rroot_dir\0\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\bcmd\1\3\0\0\vclangd\29--header-insertion=never\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\1\2\0\0\vutf-32\19offsetEncoding\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\né\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\3\tbind\2\23trigger_on_newline\2\14doc_lines\3\n\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nﬂ\5\0\0\6\0\28\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0004\5\0\0=\5\17\0045\5\18\0=\5\19\4=\4\20\3B\1\2\0016\1\21\0009\1\22\1'\2\24\0=\2\23\0016\1\21\0009\1\22\1'\2\26\0=\2\25\0016\1\21\0009\1\22\1)\2c\0=\2\27\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\24toggle_query_editor\6o\14goto_node\t<cr>\vupdate\6R\14show_help\6?\30toggle_injected_languages\6t\21toggle_hl_groups\6i\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nd\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
