-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
  catppuccin = {
    after = { "telescope.nvim" },
    config = { "\27LJ\2\n„\2\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\1\v\0=\1\n\0006\0\b\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\vfrappe\23catppuccin_flavour\6g\bvim\17integrations\15native_lsp\1\0\1\fenabled\2\1\0\4\14telescope\2\15treesitter\2\bcmp\2\rgitsigns\2\1\0\1\16term_colors\2\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
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
  ["cmp-snippy"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/cmp-snippy",
    url = "https://github.com/dcampos/cmp-snippy"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\nË\1\0\0\6\0\t\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0005\2\a\0006\3\0\0'\5\5\0B\3\2\0029\3\6\3B\3\1\2=\3\b\2B\0\2\1K\0\1\0\15components\1\0\0\bget*catppuccin.groups.integrations.feline\vfeline\rgitsigns\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["notifier.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnotifier\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/notifier.nvim",
    url = "https://github.com/vigoux/notifier.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nF\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19expand_snippet\vsnippy\frequireï\5\1\0\t\0+\0Y6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0006\5\0\0'\a\b\0B\5\2\0029\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\r\0034\4\0\0=\4\14\0039\4\15\0009\4\16\0049\4\17\0045\6\19\0009\a\15\0009\a\18\aB\a\1\2=\a\20\0069\a\15\0009\a\21\aB\a\1\2=\a\22\0069\a\15\0009\a\23\aB\a\1\2=\a\24\0069\a\15\0009\a\25\aB\a\1\2=\a\26\6B\4\2\2=\4\15\0039\4\27\0009\4\28\0044\6\5\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0065\a \0>\a\4\6B\4\2\2=\4\28\0035\4!\0=\4\"\3B\1\2\0019\1\2\0009\1#\1'\3$\0005\4%\0009\5\15\0009\5\16\0059\5#\5B\5\1\2=\5\15\0044\5\3\0005\6&\0>\6\1\5=\5\28\4B\1\3\0019\1\2\0009\1#\1'\3'\0005\4(\0009\5\15\0009\5\16\0059\5#\5B\5\1\2=\5\15\0044\5\3\0005\6)\0>\6\1\0055\6*\0>\6\2\5=\5\28\4B\1\3\1K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\17experimental\1\0\1\15ghost_text\2\1\0\1\tname\vsnippy\1\0\1\tname\tpath\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\fconfirm\14<C-Space>\rcomplete\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\vinsert\vpreset\fmapping\vwindow\15formatting\vformat\1\0\0\1\0\1\rmaxwidth\0032\15cmp_format\flspkind\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nö\5\0\2\v\0\25\0K5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\4\3\0\18\6\1\0'\a\4\0'\b\5\0'\t\6\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\a\0'\t\b\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\t\0'\t\n\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\v\0'\t\f\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\r\0'\t\14\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\15\0'\t\16\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\17\0'\t\18\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\19\0'\b\17\0'\t\20\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\21\0'\t\22\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\23\0'\t\24\0\18\n\2\0B\4\6\1K\0\1\0&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac*:lua vim.lsp.buf.signature_help()<CR>\n<C-k>!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2œ\a\1\0\b\0002\0b6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\0025\4\a\0005\5\6\0=\5\b\4B\2\2\0016\2\3\0009\2\t\0029\2\n\2'\4\v\0'\5\f\0'\6\r\0\18\a\1\0B\2\5\0016\2\3\0009\2\t\0029\2\n\2'\4\v\0'\5\14\0'\6\15\0\18\a\1\0B\2\5\0016\2\3\0009\2\t\0029\2\16\2'\4\17\0005\5\18\0006\6\3\0009\6\4\0069\6\19\6=\6\20\5B\2\3\0016\2\3\0009\2\21\2)\3,\1=\3\22\0023\2\23\0006\3\3\0009\3\24\0039\3\25\0039\3\26\3B\3\1\0029\4\27\0039\4\28\0049\4\29\4+\5\2\0=\5\30\0046\4\0\0'\6\31\0B\4\2\0029\4 \4\18\6\3\0B\4\2\2\18\3\4\0009\4!\0009\4\"\0045\6$\0005\a#\0=\a%\6=\3&\6=\2'\6B\4\2\0019\4(\0009\4\"\0045\6)\0=\3&\6=\2'\6B\4\2\0019\4*\0009\4\"\0045\6+\0=\3&\6=\2'\6B\4\2\0019\4,\0009\4\"\0045\6-\0=\3&\6=\2'\6B\4\2\0019\4.\0009\4\"\0045\6/\0=\3&\6=\2'\6B\4\2\0019\0040\0009\4\"\0045\0061\0=\3&\6=\2'\6B\4\2\1K\0\1\0\1\0\0\16tailwindcss\1\0\0\thtml\1\0\0\ncssls\1\0\0\bzls\1\0\0\ngopls\14on_attach\17capabilities\bcmd\1\0\0\1\3\0\0\vclangd\29--header-insertion=never\nsetup\vclangd\24update_capabilities\17cmp_nvim_lsp\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\0\15updatetime\6o\rcallback\15open_float\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd(:lua vim.diagnostic.goto_next()<CR>\a]g(:lua vim.diagnostic.goto_prev()<CR>\a[g\6n\20nvim_set_keymap\bapi\nfloat\1\0\0\1\0\1\14focusable\1\vconfig\15diagnostic\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-snippy"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n…\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\2\17sync_install\2\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n³\b\0\0\b\0\"\0K6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\0045\5\b\0=\5\t\4=\4\v\3B\1\2\0015\1\f\0006\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\21\0'\6\22\0\18\a\1\0B\2\5\0016\2\r\0009\2\23\2'\4\24\0B\2\2\0016\2\r\0009\2\23\2'\4\25\0B\2\2\0016\2\r\0009\2\23\2'\4\26\0B\2\2\0016\2\r\0009\2\23\2'\4\27\0B\2\2\0016\2\r\0009\2\23\2'\4\28\0B\2\2\0016\2\r\0009\2\23\2'\4\29\0B\2\2\0016\2\r\0009\2\23\2'\4\30\0B\2\2\0016\2\r\0009\2\23\2'\4\31\0B\2\2\0019\2 \0'\4!\0B\2\2\1K\0\1\0\bfzf\19load_extension3highlight! TelescopeResultsTitle guifg=#2328310highlight! link TelescopeBorder NormalFloat1highlight! link TelescopePromptBorder Visual1highlight! link TelescopePromptNormal Visual7highlight! link TelescopePreviewNormal NormalFloat7highlight! link TelescopeResultsNormal NormalFloatChighlight! link TelescopePromptTitle DiagnosticVirtualTextInfoDhighlight! link TelescopePreviewTitle DiagnosticVirtualTextHint\bcmd\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\rdefaults\1\0\0\16borderchars\1\t\0\0\6 \6 \6 \6 \6 \6 \6 \6 \18layout_config\1\0\3\17entry_prefix\a  \20selection_caret\a  \18prompt_prefix\v ï€‚  \15horizontal\1\0\0\1\0\1\20prompt_position\btop\nsetup\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ogromny/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\nË\1\0\0\6\0\t\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0005\2\a\0006\3\0\0'\5\5\0B\3\2\0029\3\6\3B\3\1\2=\3\b\2B\0\2\1K\0\1\0\15components\1\0\0\bget*catppuccin.groups.integrations.feline\vfeline\rgitsigns\nsetup\22nvim-web-devicons\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n…\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\2\17sync_install\2\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: notifier.nvim
time([[Config for notifier.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnotifier\frequire\0", "config", "notifier.nvim")
time([[Config for notifier.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nF\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19expand_snippet\vsnippy\frequireï\5\1\0\t\0+\0Y6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0006\5\0\0'\a\b\0B\5\2\0029\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\r\0034\4\0\0=\4\14\0039\4\15\0009\4\16\0049\4\17\0045\6\19\0009\a\15\0009\a\18\aB\a\1\2=\a\20\0069\a\15\0009\a\21\aB\a\1\2=\a\22\0069\a\15\0009\a\23\aB\a\1\2=\a\24\0069\a\15\0009\a\25\aB\a\1\2=\a\26\6B\4\2\2=\4\15\0039\4\27\0009\4\28\0044\6\5\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0065\a \0>\a\4\6B\4\2\2=\4\28\0035\4!\0=\4\"\3B\1\2\0019\1\2\0009\1#\1'\3$\0005\4%\0009\5\15\0009\5\16\0059\5#\5B\5\1\2=\5\15\0044\5\3\0005\6&\0>\6\1\5=\5\28\4B\1\3\0019\1\2\0009\1#\1'\3'\0005\4(\0009\5\15\0009\5\16\0059\5#\5B\5\1\2=\5\15\0044\5\3\0005\6)\0>\6\1\0055\6*\0>\6\2\5=\5\28\4B\1\3\1K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\17experimental\1\0\1\15ghost_text\2\1\0\1\tname\vsnippy\1\0\1\tname\tpath\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\fconfirm\14<C-Space>\rcomplete\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\vinsert\vpreset\fmapping\vwindow\15formatting\vformat\1\0\0\1\0\1\rmaxwidth\0032\15cmp_format\flspkind\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n„\2\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\1\v\0=\1\n\0006\0\b\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\vfrappe\23catppuccin_flavour\6g\bvim\17integrations\15native_lsp\1\0\1\fenabled\2\1\0\4\14telescope\2\15treesitter\2\bcmp\2\rgitsigns\2\1\0\1\16term_colors\2\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nö\5\0\2\v\0\25\0K5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\4\3\0\18\6\1\0'\a\4\0'\b\5\0'\t\6\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\a\0'\t\b\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\t\0'\t\n\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\v\0'\t\f\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\r\0'\t\14\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\15\0'\t\16\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\17\0'\t\18\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\19\0'\b\17\0'\t\20\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\21\0'\t\22\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\23\0'\t\24\0\18\n\2\0B\4\6\1K\0\1\0&:lua vim.lsp.buf.formatting()<CR>\14<leader>f\":lua vim.lsp.buf.rename()<CR>\14<leader>r-:lua vim.lsp.buf.range_code_action()<CR>\6v':lua vim.lsp.buf.code_action()<CR>\15<leader>ac*:lua vim.lsp.buf.signature_help()<CR>\n<C-k>!:lua vim.lsp.buf.hover()<CR>\6K&:lua vim.lsp.buf.references()<CR>\agr*:lua vim.lsp.buf.implementation()<CR>\agi&:lua vim.lsp.buf.definition()<CR>\agd':lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2œ\a\1\0\b\0002\0b6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\0025\4\a\0005\5\6\0=\5\b\4B\2\2\0016\2\3\0009\2\t\0029\2\n\2'\4\v\0'\5\f\0'\6\r\0\18\a\1\0B\2\5\0016\2\3\0009\2\t\0029\2\n\2'\4\v\0'\5\14\0'\6\15\0\18\a\1\0B\2\5\0016\2\3\0009\2\t\0029\2\16\2'\4\17\0005\5\18\0006\6\3\0009\6\4\0069\6\19\6=\6\20\5B\2\3\0016\2\3\0009\2\21\2)\3,\1=\3\22\0023\2\23\0006\3\3\0009\3\24\0039\3\25\0039\3\26\3B\3\1\0029\4\27\0039\4\28\0049\4\29\4+\5\2\0=\5\30\0046\4\0\0'\6\31\0B\4\2\0029\4 \4\18\6\3\0B\4\2\2\18\3\4\0009\4!\0009\4\"\0045\6$\0005\a#\0=\a%\6=\3&\6=\2'\6B\4\2\0019\4(\0009\4\"\0045\6)\0=\3&\6=\2'\6B\4\2\0019\4*\0009\4\"\0045\6+\0=\3&\6=\2'\6B\4\2\0019\4,\0009\4\"\0045\6-\0=\3&\6=\2'\6B\4\2\0019\4.\0009\4\"\0045\6/\0=\3&\6=\2'\6B\4\2\0019\0040\0009\4\"\0045\0061\0=\3&\6=\2'\6B\4\2\1K\0\1\0\1\0\0\16tailwindcss\1\0\0\thtml\1\0\0\ncssls\1\0\0\bzls\1\0\0\ngopls\14on_attach\17capabilities\bcmd\1\0\0\1\3\0\0\vclangd\29--header-insertion=never\nsetup\vclangd\24update_capabilities\17cmp_nvim_lsp\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\0\15updatetime\6o\rcallback\15open_float\1\0\1\fpattern\6*\27CursorHold,CursorHoldI\24nvim_create_autocmd(:lua vim.diagnostic.goto_next()<CR>\a]g(:lua vim.diagnostic.goto_prev()<CR>\a[g\6n\20nvim_set_keymap\bapi\nfloat\1\0\0\1\0\1\14focusable\1\vconfig\15diagnostic\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope.nvim ]]

-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n³\b\0\0\b\0\"\0K6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\n\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\0045\5\b\0=\5\t\4=\4\v\3B\1\2\0015\1\f\0006\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\4\16\0'\5\21\0'\6\22\0\18\a\1\0B\2\5\0016\2\r\0009\2\23\2'\4\24\0B\2\2\0016\2\r\0009\2\23\2'\4\25\0B\2\2\0016\2\r\0009\2\23\2'\4\26\0B\2\2\0016\2\r\0009\2\23\2'\4\27\0B\2\2\0016\2\r\0009\2\23\2'\4\28\0B\2\2\0016\2\r\0009\2\23\2'\4\29\0B\2\2\0016\2\r\0009\2\23\2'\4\30\0B\2\2\0016\2\r\0009\2\23\2'\4\31\0B\2\2\0019\2 \0'\4!\0B\2\2\1K\0\1\0\bfzf\19load_extension3highlight! TelescopeResultsTitle guifg=#2328310highlight! link TelescopeBorder NormalFloat1highlight! link TelescopePromptBorder Visual1highlight! link TelescopePromptNormal Visual7highlight! link TelescopePreviewNormal NormalFloat7highlight! link TelescopeResultsNormal NormalFloatChighlight! link TelescopePromptTitle DiagnosticVirtualTextInfoDhighlight! link TelescopePreviewTitle DiagnosticVirtualTextHint\bcmd\27:Telescope buffers<CR>\14<leader>b\29:Telescope live_grep<CR>\14<leader>g\30:Telescope find_files<CR>\21<leader><leader>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\rdefaults\1\0\0\16borderchars\1\t\0\0\6 \6 \6 \6 \6 \6 \6 \6 \18layout_config\1\0\3\17entry_prefix\a  \20selection_caret\a  \18prompt_prefix\v ï€‚  \15horizontal\1\0\0\1\0\1\20prompt_position\btop\nsetup\14telescope\frequire\0", "config", "telescope.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
