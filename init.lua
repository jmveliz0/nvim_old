require('plugins')
require('globals')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugin configuration
require('p-nvimtree')
require('p-lspinstall')
require('p-lspcompe')
require('p-treesitter')
require('p-telescope')
require('p-fugitive')
require('p-galaxyline')
require('p-autopairs')
require('p-closetag')

-- LSP--
require('lsp')
require('lsp.lua-ls')
require('lsp.js-ts-ls')
require('lsp.vue-ls')
require('lsp.html-ls')
require('lsp.emmet-ls')
