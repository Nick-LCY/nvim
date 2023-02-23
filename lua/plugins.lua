local M = {}

function M.setup()
  function load_plugins(use)
    use "wbthomason/packer.nvim"
    use "neovim/nvim-lspconfig"
    require"lspconfig".pylsp.setup{}

    use {
      "nvim-lualine/lualine.nvim",
      requires = {"nvim-tree/nvim-web-devicons"},
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
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      opt = true,
      config = function()
        require("configs.cmp").setup()
      end,
      requires = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "ray-x/cmp-treesitter",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-calc",
        "hrsh7th/cmp-emoji",
        "f3fora/cmp-spell",
        disable = false
      }
    }

    use {
      "akinsho/nvim-bufferline.lua",
      wants = "nvim-tree/nvim-web-devicons",
      config = function()
	require("configs.bufferline").setup()
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
