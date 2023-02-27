local M = {}

function M.setup()
	function load_plugins(use)
		use "wbthomason/packer.nvim"

		use {
			"neoclide/coc.nvim",
			branch = "release",
			config = function()
				require("configs.coc").setup()
			end
		}

		use {
			"dinhhuy258/git.nvim",
			config = function()
				require("git").setup()
			end
		}

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
