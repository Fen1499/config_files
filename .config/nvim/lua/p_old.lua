return require('packer').startup(function()
	--Packer
	use 'wbthomason/packer.nvim'
	  -- Commenting
	  -- use 'tomtom/tcomment_vim'
	use {
	'numToStr/Comment.nvim',
	config = function()
         require('Comment').setup()
          end,
	}
        use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
	--Search
	use 'romainl/vim-cool'
        use {
    		'nvim-treesitter/nvim-treesitter',
    		requires = {
      		'nvim-treesitter/nvim-treesitter-refactor',
      		'RRethy/nvim-treesitter-textsubjects',
    		},
    		run = ':TSUpdate',
  	}	
  	use {
   	    "williamboman/nvim-lsp-installer",
    	    "neovim/nvim-lspconfig",
	}
	use {'nvim-telescope/telescope.nvim'
	  requires = {{'nvim-lua/plenary.nvim'}}
	}
	use 'nvim-telescope/telescope-file-browser.nvim'
end)
