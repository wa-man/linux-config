local ok, lazy = pcall(require, "lazy")
if not ok then 
	return
end

lazy.setup({
    root = vim.fn.stdpath("data") .. "/lazy",
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- LSP Stuff
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            "glepnir/lspsaga.nvim",
            "RRethy/vim-illuminate",

            -- Completions
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "dcampos/nvim-snippy",
            "doxnit/cmp-luasnip-choice",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "lukas-reineke/cmp-under-comparator",
            "L3MON4D3/LuaSnip",
            "hrsh7th/cmp-vsnip",
            "rafamadriz/friendly-snippets",
            "hrsh7th/cmp-nvim-lsp-signature-help",
        },
        config = function()
            -- Lsp Configs
            require("plugins.configs.lsp")
            -- Completions
            require("plugins.configs.cmp")
        end,
    },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("plugins.configs.colorschemes")
		end,
	},
	{
		"marko-cerovac/material.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("plugins.configs.telescope")
		end,
	},
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension("frecency")
        end,
        dependencies = {"kkharji/sqlite.lua"}
    },
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.configs.treesitter")
		end,
	},
	{
		"nvim-treesitter/playground",
	},
	{
		"tpope/vim-fugitive",
		config = function()
			require("plugins.configs.fugitive")
		end,
	},
    {
        "karb94/neoscroll.nvim",
        event = "bufEnter",
        config = function()
            require("neoscroll").setup({})
        end,
    },
    {
		"theprimeagen/harpoon",
		config = function()
			require("plugins.configs.harpoon")
		end,
	},
    {
		"akinsho/toggleterm.nvim",
		config = function()
			require("plugins.configs.ui.toggleterm")
		end,
	},
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("plugins.configs.ui.scrollbar")
        end,
    },
    {
        "mbbill/undotree",
        config = function()
            require("plugins.configs.undotree")
        end,
    },
    {
		"lukas-reineke/indent-blankline.nvim",
		event = "BufEnter",
        main = "ibl",
		config = function()
			require("plugins.configs.ui.indent_blankline")
		end,
	},
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    -- default options: exact mode, multi window, all directions, with a backdrop
                    require("flash").jump()
                end,
            },
            {
                "S",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter()
                end,
            },
        },
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require("plugins.configs.ui.alpha")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("plugins.configs.ui.bufferline")
        end,
    },
    { "anuvyklack/windows.nvim",
        dependencies = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim"
        },
        config = function()
            vim.o.winwidth = 10
            vim.o.winminwidth = 10
            vim.o.equalalways = false
            require('windows').setup()
        end
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add options
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
        config = function()
            require("plugins.configs.ui.noice")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("plugins.configs.ui.lualine")
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = true,
        event = "InsertEnter",
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
    },
    {
        "theprimeagen/vim-be-good",
    },
    {
        "lewis6991/impatient.nvim",
    },
})


