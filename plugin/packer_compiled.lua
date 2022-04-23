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
local package_path_str = "/home/cosmos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/cosmos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/cosmos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/cosmos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cosmos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.luasnip\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "http://ghproxy.com/github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.bufferline\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "http://ghproxy.com/github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "http://ghproxy.com/github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "http://ghproxy.com/github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "http://ghproxy.com/github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "http://ghproxy.com/github.com/saadparwaiz1/cmp_luasnip"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.formatter\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "http://ghproxy.com/github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "http://ghproxy.com/github.com/rafamadriz/friendly-snippets"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "http://ghproxy.com/github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.lualine\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "http://ghproxy.com/github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.nvim-cmp\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "http://ghproxy.com/github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.nvim-dap\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "http://ghproxy.com/github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21conf.nvim-dap-ui\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "http://ghproxy.com/github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31conf.nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "http://ghproxy.com/github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24conf.nvim-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "http://ghproxy.com/github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "http://ghproxy.com/github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25conf.nvim-treesitter\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "http://ghproxy.com/github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "http://ghproxy.com/github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.onedark\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "http://ghproxy.com/github.com/ful1e5/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "http://ghproxy.com/github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "http://ghproxy.com/github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.telescope\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "http://ghproxy.com/github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22conf.vim-floaterm\frequire\0" },
    loaded = true,
    path = "/home/cosmos/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "http://ghproxy.com/github.com/voldikss/vim-floaterm"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22conf.vim-floaterm\frequire\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.nvim-cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.onedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24conf.nvim-lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.luasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17conf.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31conf.nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18conf.nvim-dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19conf.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25conf.nvim-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20conf.bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21conf.nvim-dap-ui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
