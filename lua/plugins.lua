local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
	-- Packer can manage itself as an optional plugin
	use "wbthomason/packer.nvim"
	use 'morhetz/gruvbox'

    -- Explorer
	use "kyazdani42/nvim-tree.lua"
	use { "kyazdani42/nvim-web-devicons" }

    -- LSP
	use { 'kabouzeid/nvim-lspinstall' }
	use { "neovim/nvim-lspconfig" }
	use { 'hrsh7th/nvim-compe' }
	use { "hrsh7th/vim-vsnip" }

	-- Treesitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

	-- Telescope
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- Git Fugitive
	use { 'tpope/vim-fugitive' }

	-- Status Bar
	use {
		'glepnir/galaxyline.nvim',
	}
	use {"windwp/nvim-autopairs" }

	-- Emmet
 	use {"mattn/emmet-vim" }

	-- close tag
	use { "alvan/vim-closetag"}

    end
)
