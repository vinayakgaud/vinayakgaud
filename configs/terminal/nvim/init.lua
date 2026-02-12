-- 1. Simple Settings
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.splitright = true
opt.splitbelow = true
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.termguicolors = true
opt.cursorline = true

vim.g.mapleader = " "

-- 2. Bootstrap 'lazy.nvim'
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 3. Consolidated Plugin Setup
require("lazy").setup({
  -- UI & Theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP Support (LSP-Zero)
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  },
}, {
  rocks = { enabled = false } -- Disables the Luarocks/Hererocks warnings from your healthcheck
})

-- 4. Plugin Configurations
vim.cmd.colorscheme "catppuccin-mocha"
require('lualine').setup()
require("nvim-tree").setup()

-- Keymaps
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- 5. LSP Logic
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'gopls', 'jdtls', 'pyright', 'ts_ls'},
  handlers = {
    lsp_zero.default_setup,
  },
})
