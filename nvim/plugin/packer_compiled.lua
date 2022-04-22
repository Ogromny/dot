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
    config = { "\27LJ\2\2é\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\3\14doc_lines\3\n\23trigger_on_newline\2\tbind\2\nsetup\18lsp_signature\frequire\0" },
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
    config = { "\27LJ\2\2\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 ı\4\1\0\a\0 \00025\0\2\0003\1\0\0>\1\1\0005\1\1\0=\1\3\0006\1\4\0'\2\5\0B\1\2\0029\1\6\0015\2\b\0005\3\a\0=\3\t\0025\3\r\0004\4\3\0005\5\n\0005\6\v\0=\6\f\5>\5\1\4=\4\14\0034\4\3\0005\5\15\0005\6\16\0=\6\f\0055\6\17\0=\6\18\5>\5\1\4=\4\19\0035\4\20\0005\5\21\0>\5\2\4=\4\22\0034\4\3\0005\5\23\0>\5\1\4=\4\24\0034\4\3\0005\5\25\0005\6\26\0=\6\f\5>\5\1\4=\4\27\0034\4\3\0005\5\28\0005\6\29\0=\6\f\5>\5\1\4=\4\30\3=\3\31\2B\1\2\1K\0\1\0\rsections\14lualine_z\1\0\1\nright\bÓÇ¥\1\2\0\0\rprogress\14lualine_y\1\0\1\tleft\bÓÇ∂\1\2\0\0\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\1\2\0\0\a%=\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\0\1\nright\bÓÇ¥\1\2\2\0\16diagnostics\19always_visible\2\21update_in_insert\2\14lualine_a\1\0\0\14separator\1\0\1\tleft\bÓÇ∂\1\2\0\0\tmode\foptions\1\0\0\1\0\3\23section_separators\5\25component_separators\5\17globalstatus\2\nsetup\flualine\frequire\fpadding\1\0\1\ncolor\21lualine_c_normal\1\0\1\tleft\3\1\0\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\2Î\3\0\0\6\0\18\0B5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\5\0'\4\6\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\a\0'\4\b\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\5\0'\4\n\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\a\0'\4\v\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\f\0'\4\r\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\14\0'\4\15\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\f\0'\4\16\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\14\0'\4\17\0\18\5\0\0B\1\5\1K\0\1\0\24:MoveHBlock(-1)<CR>\23:MoveHBlock(1)<CR>\23:MoveHChar(-1)<CR>\n<C-h>\22:MoveHChar(1)<CR>\n<C-l>\22:MoveBlock(1)<CR>\23:MoveBlock(-1)<CR>\6v\21:MoveLine(1)<CR>\n<C-j>\22:MoveLine(-1)<CR>\n<C-k>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\24colorscheme nordfox\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableæ\6\1\0\t\0003\0^6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\v\0006\5\0\0'\6\t\0B\5\2\0029\5\n\5B\5\1\2=\5\f\4=\4\r\0035\4\21\0009\5\14\0009\6\14\0009\6\15\0065\a\18\0009\b\16\0009\b\17\b=\b\19\aB\6\2\0025\a\20\0B\5\3\2=\5\22\0049\5\14\0009\6\14\0009\6\23\0065\a\24\0009\b\16\0009\b\17\b=\b\19\aB\6\2\0025\a\25\0B\5\3\2=\5\26\0049\5\14\0003\6\27\0005\a\28\0B\5\3\2=\5\29\0049\5\14\0003\6\30\0005\a\31\0B\5\3\2=\5 \0049\5\14\0009\5!\5B\5\1\2=\5\"\0049\5\14\0009\5#\5B\5\1\2=\5$\4=\4\14\0035\4%\0=\4&\0034\4\6\0005\5'\0>\5\1\0045\5(\0>\5\2\0045\5)\0>\5\3\0045\5*\0>\5\4\0045\5+\0>\5\5\4=\4,\3B\2\2\0016\2\0\0'\3-\0B\2\2\0029\2\3\2B\2\1\0019\2.\0019\2/\0025\0030\0B\2\2\0016\2\0\0'\0031\0B\2\2\0029\0022\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\2\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2É\1\0\1\5\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\2\2\0'\3\3\0'\4\4\0B\1\4\2\18\2\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutil5\0\0\1\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim∑\25\1\0\v\0ì\1\0≈\0026\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0\30\3B\2\2\0019\2-\0019\2\28\0025\3.\0=\0/\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\3B\2\2\0019\0022\0019\2\28\0025\0033\0=\0\30\3B\2\2\0019\0024\0019\2\28\0025\0035\0=\0\30\0035\0046\0=\0047\0033\0048\0=\0049\3B\2\2\0019\2:\0019\2\28\0025\3;\0=\0\30\0035\4B\0005\5=\0005\6<\0=\6>\0055\6?\0=\6\5\0055\6@\0=\6A\5=\5C\4=\4D\3B\2\2\0019\2E\0019\2\28\0025\3F\0=\0\30\0035\4J\0005\5H\0005\6G\0=\6I\5=\5K\0045\5M\0005\6L\0=\6N\5=\5O\4=\4P\3B\2\2\0016\2\0\0009\2Q\0026\3R\0009\3S\3'\4T\0B\2\3\0026\3U\0009\3V\3\18\4\2\0'\5W\0B\3\3\0016\3U\0009\3V\3\18\4\2\0'\5X\0B\3\3\0019\3Y\0019\3\28\0035\4[\0005\5Z\0=\0057\0045\5j\0005\6]\0005\a\\\0=\2S\a=\a^\0065\a`\0005\b_\0=\ba\a=\ab\0065\af\0006\b\0\0009\bc\b9\bd\b'\te\0+\n\2\0B\b\3\2=\bg\a=\ah\0065\ai\0=\aN\6=\6k\5=\5P\4B\3\2\0015\3l\0'\4m\0006\5\0\0009\5c\0059\5n\5'\6o\0'\ap\0'\bq\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\ar\0'\bs\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\at\0'\bu\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\av\0'\bw\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\ax\0'\by\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\az\0'\b{\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6|\0'\az\0'\b}\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\a~\0'\b\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÄ\0'\bÅ\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÇ\0'\bÉ\0\18\t\4\0'\nÑ\0&\b\n\b\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÖ\0'\bÜ\0\18\t\4\0'\nÑ\0&\b\n\b\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5á\5'\6à\0005\aâ\0003\bä\0=\bã\aB\5\3\0016\5\0\0009\5å\5)\6,\1=\6ç\0056\5\0\0009\5\1\0059\5é\0056\6\0\0009\6\1\0069\6ê\0066\a\0\0009\a\1\a9\aé\a9\aë\a5\bí\0B\6\3\2=\6è\0052\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6o\rcallback\0\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd#:lua vim.diagnostic.goto_next(\a]g\n)<CR>#:lua vim.diagnostic.goto_prev(\a[g&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\20nvim_set_keymap3{popup_opts={border='single',focusable=false}}\1\0\2\fnoremap\2\vsilent\2\bLua\1\0\0\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\rsettings\vredhat\14telemetry\1\0\0\1\0\1\fenabled\1\tyaml\1\0\0\fschemas\1\0\0\1\0\1`https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json\30docker-compose.{yml,yaml}\1\0\0\vyamlls\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\rroot_dir\0\bcmd\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2ﬂ\5\0\0\5\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\2\t\0B\1\2\0029\1\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0004\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\1\2\0016\1\21\0009\1\22\1'\2\24\0=\2\23\0016\1\21\0009\1\22\1'\2\26\0=\2\25\0016\1\21\0009\1\22\1)\2c\0=\2\27\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
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
    config = { "\27LJ\2\2à\3\0\0\6\0\19\0$6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0015\0\b\0006\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\r\0'\4\14\0\18\5\0\0B\1\5\0016\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\15\0'\4\16\0\18\5\0\0B\1\5\0016\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\17\0'\4\18\0\18\5\0\0B\1\5\1K\0\1\0\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
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
try_loadstring("\27LJ\2\2é\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\3\14doc_lines\3\n\23trigger_on_newline\2\tbind\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2à\3\0\0\6\0\19\0$6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0015\0\b\0006\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\r\0'\4\14\0\18\5\0\0B\1\5\0016\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\15\0'\4\16\0\18\5\0\0B\1\5\0016\1\t\0009\1\n\0019\1\v\1'\2\f\0'\3\17\0'\4\18\0\18\5\0\0B\1\5\1K\0\1\0\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\vvendor\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireO\0\0\1\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\1¿\19expand_or_jump\23expand_or_jumpableC\0\0\2\1\2\0\v-\0\0\0009\0\0\0)\1ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\1ˇˇB\0\2\1K\0\1\0\1¿\tjump\rjumpableæ\6\1\0\t\0003\0^6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\v\0006\5\0\0'\6\t\0B\5\2\0029\5\n\5B\5\1\2=\5\f\4=\4\r\0035\4\21\0009\5\14\0009\6\14\0009\6\15\0065\a\18\0009\b\16\0009\b\17\b=\b\19\aB\6\2\0025\a\20\0B\5\3\2=\5\22\0049\5\14\0009\6\14\0009\6\23\0065\a\24\0009\b\16\0009\b\17\b=\b\19\aB\6\2\0025\a\25\0B\5\3\2=\5\26\0049\5\14\0003\6\27\0005\a\28\0B\5\3\2=\5\29\0049\5\14\0003\6\30\0005\a\31\0B\5\3\2=\5 \0049\5\14\0009\5!\5B\5\1\2=\5\"\0049\5\14\0009\5#\5B\5\1\2=\5$\4=\4\14\0035\4%\0=\4&\0034\4\6\0005\5'\0>\5\1\0045\5(\0>\5\2\0045\5)\0>\5\3\0045\5*\0>\5\4\0045\5+\0>\5\5\4=\4,\3B\2\2\0016\2\0\0'\3-\0B\2\2\0029\2\3\2B\2\1\0019\2.\0019\2/\0025\0030\0B\2\2\0016\2\0\0'\0031\0B\2\2\0029\0022\0024\3\0\0B\2\2\0012\0\0ÄK\0\1\0\tload luasnip/loaders/from_vscode\1\0\1\fhistory\2\15set_config\vconfig\17cmp_nvim_lsp\fsources\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\17experimental\1\0\1\15ghost_text\2\t<CR>\fconfirm\14<C-Space>\rcomplete\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\f<S-Tab>\1\3\0\0\6i\6s\1\0\0\21select_prev_item\n<Tab>\1\0\0\1\3\0\0\6i\6s\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\fmapping\15formatting\vformat\1\0\0\15cmp_format\flspkind\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
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
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\2Î\3\0\0\6\0\18\0B5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\5\0'\4\6\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\a\0'\4\b\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\5\0'\4\n\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\a\0'\4\v\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\f\0'\4\r\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\14\0'\4\15\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\f\0'\4\16\0\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\t\0'\3\14\0'\4\17\0\18\5\0\0B\1\5\1K\0\1\0\24:MoveHBlock(-1)<CR>\23:MoveHBlock(1)<CR>\23:MoveHChar(-1)<CR>\n<C-h>\22:MoveHChar(1)<CR>\n<C-l>\22:MoveBlock(1)<CR>\23:MoveBlock(-1)<CR>\6v\21:MoveLine(1)<CR>\n<C-j>\22:MoveLine(-1)<CR>\n<C-k>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 ı\4\1\0\a\0 \00025\0\2\0003\1\0\0>\1\1\0005\1\1\0=\1\3\0006\1\4\0'\2\5\0B\1\2\0029\1\6\0015\2\b\0005\3\a\0=\3\t\0025\3\r\0004\4\3\0005\5\n\0005\6\v\0=\6\f\5>\5\1\4=\4\14\0034\4\3\0005\5\15\0005\6\16\0=\6\f\0055\6\17\0=\6\18\5>\5\1\4=\4\19\0035\4\20\0005\5\21\0>\5\2\4=\4\22\0034\4\3\0005\5\23\0>\5\1\4=\4\24\0034\4\3\0005\5\25\0005\6\26\0=\6\f\5>\5\1\4=\4\27\0034\4\3\0005\5\28\0005\6\29\0=\6\f\5>\5\1\4=\4\30\3=\3\31\2B\1\2\1K\0\1\0\rsections\14lualine_z\1\0\1\nright\bÓÇ¥\1\2\0\0\rprogress\14lualine_y\1\0\1\tleft\bÓÇ∂\1\2\0\0\rlocation\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\1\2\0\0\a%=\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\0\1\nright\bÓÇ¥\1\2\2\0\16diagnostics\19always_visible\2\21update_in_insert\2\14lualine_a\1\0\0\14separator\1\0\1\tleft\bÓÇ∂\1\2\0\0\tmode\foptions\1\0\0\1\0\3\23section_separators\5\25component_separators\5\17globalstatus\2\nsetup\flualine\frequire\fpadding\1\0\1\ncolor\21lualine_c_normal\1\0\1\tleft\3\1\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2d\0\0\2\0\a\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\3\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\byes\15signcolumn\6o\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2ﬂ\5\0\0\5\0\28\0(6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\2\t\0B\1\2\0029\1\n\0015\2\f\0005\3\v\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0004\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\2B\1\2\0016\1\21\0009\1\22\1'\2\24\0=\2\23\0016\1\21\0009\1\22\1'\2\26\0=\2\25\0016\1\21\0009\1\22\1)\2c\0=\2\27\1K\0\1\0\19foldlevelstart\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\thare\nfiles\1\3\0\0\17src/parser.c\18src/scanner.c\1\0\1\burl\30~/Code/C/tree-sitter-hare\thare\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2Ö\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\1\0\2\vlinehl\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\24colorscheme nordfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2É\1\0\1\5\1\b\0\16-\1\0\0009\1\0\0019\1\1\1'\2\2\0'\3\3\0'\4\4\0B\1\4\2\18\2\0\0B\1\2\2\14\0\1\0X\2\4Ä6\1\5\0009\1\6\0019\1\a\1B\1\1\2L\1\2\0\1¿\vgetcwd\afn\bvim\t.git\17gradle.build\fpom.xml\17root_pattern\tutil5\0\0\1\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim∑\25\1\0\v\0ì\1\0≈\0026\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\0015\2\b\0=\2\a\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\t\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\n\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\v\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\f\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\r\0019\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\14\0019\1\4\0009\1\5\0019\1\6\0015\2\17\0005\3\16\0=\3\18\2=\2\15\0019\1\4\0009\1\5\0019\1\6\0015\2\21\0005\3\20\0=\3\22\2=\2\19\0016\1\23\0'\2\24\0B\1\2\0029\1\25\1\18\2\0\0B\1\2\2\18\0\1\0006\1\23\0'\2\26\0B\1\2\0029\2\27\0019\2\28\0025\3\29\0=\0\30\3B\2\2\0019\2\31\0019\2\28\0025\3 \0=\0\30\3B\2\2\0019\2!\0019\2\28\0025\3\"\0=\0\30\3B\2\2\0019\2#\0019\2\28\0025\3$\0=\0\30\3B\2\2\0019\2%\0019\2\28\0025\3&\0=\0\30\3B\2\2\0019\2'\0019\2\28\0025\3(\0=\0\30\3B\2\2\0019\2)\0019\2\28\0025\3*\0=\0\30\3B\2\2\0019\2+\0019\2\28\0025\3,\0=\0\30\3B\2\2\0019\2-\0019\2\28\0025\3.\0=\0/\3B\2\2\0019\0020\0019\2\28\0025\0031\0=\0\30\3B\2\2\0019\0022\0019\2\28\0025\0033\0=\0\30\3B\2\2\0019\0024\0019\2\28\0025\0035\0=\0\30\0035\0046\0=\0047\0033\0048\0=\0049\3B\2\2\0019\2:\0019\2\28\0025\3;\0=\0\30\0035\4B\0005\5=\0005\6<\0=\6>\0055\6?\0=\6\5\0055\6@\0=\6A\5=\5C\4=\4D\3B\2\2\0019\2E\0019\2\28\0025\3F\0=\0\30\0035\4J\0005\5H\0005\6G\0=\6I\5=\5K\0045\5M\0005\6L\0=\6N\5=\5O\4=\4P\3B\2\2\0016\2\0\0009\2Q\0026\3R\0009\3S\3'\4T\0B\2\3\0026\3U\0009\3V\3\18\4\2\0'\5W\0B\3\3\0016\3U\0009\3V\3\18\4\2\0'\5X\0B\3\3\0019\3Y\0019\3\28\0035\4[\0005\5Z\0=\0057\0045\5j\0005\6]\0005\a\\\0=\2S\a=\a^\0065\a`\0005\b_\0=\ba\a=\ab\0065\af\0006\b\0\0009\bc\b9\bd\b'\te\0+\n\2\0B\b\3\2=\bg\a=\ah\0065\ai\0=\aN\6=\6k\5=\5P\4B\3\2\0015\3l\0'\4m\0006\5\0\0009\5c\0059\5n\5'\6o\0'\ap\0'\bq\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\ar\0'\bs\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\at\0'\bu\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\av\0'\bw\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\ax\0'\by\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\az\0'\b{\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6|\0'\az\0'\b}\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\a~\0'\b\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÄ\0'\bÅ\0\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÇ\0'\bÉ\0\18\t\4\0'\nÑ\0&\b\n\b\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5n\5'\6o\0'\aÖ\0'\bÜ\0\18\t\4\0'\nÑ\0&\b\n\b\18\t\3\0B\5\5\0016\5\0\0009\5c\0059\5á\5'\6à\0005\aâ\0003\bä\0=\bã\aB\5\3\0016\5\0\0009\5å\5)\6,\1=\6ç\0056\5\0\0009\5\1\0059\5é\0056\6\0\0009\6\1\0069\6ê\0066\a\0\0009\a\1\a9\aé\a9\aë\a5\bí\0B\6\3\2=\6è\0052\0\0ÄK\0\1\0\1\0\2\14focusable\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\15updatetime\6o\rcallback\0\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd#:lua vim.diagnostic.goto_next(\a]g\n)<CR>#:lua vim.diagnostic.goto_prev(\a[g&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\20nvim_set_keymap3{popup_opts={border='single',focusable=false}}\1\0\2\fnoremap\2\vsilent\2\bLua\1\0\0\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\1\4\0\0O/home/ogromny/.local/bin/lua-language-server/bin/Linux/lua-language-server\a-ED/home/ogromny/.local/bin/lua-language-server/bin/Linux/main.lua\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\rsettings\vredhat\14telemetry\1\0\0\1\0\1\fenabled\1\tyaml\1\0\0\fschemas\1\0\0\1\0\1`https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json\30docker-compose.{yml,yaml}\1\0\0\vyamlls\17init_options\nvetur\1\0\0\vformat\1\0\2\23styleInitialIndent\2\24scriptInitialIndent\2\1\0\1\15autoImport\2\15validation\1\0\0\1\0\5\rtemplate\2\nstyle\2\18templateProps\2\18interpolation\2\vscript\2\1\0\0\nvuels\rroot_dir\0\bcmd\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\nnimls\1\0\0\rtsserver\16capabilites\1\0\0\27kotlin_language_server\1\0\0\bzls\1\0\0\17intelephense\1\0\0\16tailwindcss\1\0\0\vjsonls\1\0\0\ncssls\1\0\0\thtml\1\0\0\ngopls\17capabilities\1\0\0\nsetup\vclangd\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\1\2\0\0\rmarkdown\24documentationFormat\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
