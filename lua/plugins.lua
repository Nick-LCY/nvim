local M = {}

function M.setup()
  function load_plugins(use)
    use "wbthomason/packer.nvim"
    use "neovim/nvim-lspconfig"
    require"lspconfig".pylsp.setup{}

    use {
      "nvim-lualine/lualine.nvim",
      requires = {"nvim-web-devicons"},
      config = function()
	require("configs.lualine").setup()
      end,
    }

    use {
      "SmiteshP/nvim-gps",
      require = "nvim-treesitter/nvim-treesitter",
      module = "nvim-gps",
      config = function()
	require("nvim-gps").setup()
      end,
    }

    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      config = function()
	require("configs.treesitter").setup()
      end,
    }

    use {
      "sainnhe/everforest",
      config = function()
        vim.cmd "colorscheme everforest"
      end
    }

    use { 
      "windwp/nvim-autopairs",
      config = function()
	require("nvim-autopairs").setup()
      end
    }

    use {
      "nvim-tree/nvim-tree.lua",
      requires = {
      	"nvim-tree/nvim-web-devicons"
      },
      config = function()
	require("nvim-tree").setup()
      end
    }
  end

  require("packer").startup(load_plugins)
end

return M
