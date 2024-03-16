return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("config.telescope")
        end,
    },
    {
        "theprimeagen/harpoon",
        config = function()
            require("config.harpoon")
        end,
    },
    {
        "b0o/incline.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "SmiteshP/nvim-navic",
        },
        config = function()
            require("config.ui.incline")
        end,
    },
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("config.ui.scrollbar")
        end,
    },
    --[[{
        "karb94/neoscroll.nvim",
        event = "bufEnter",
        config = function()
            require("config.ui.neoscroll")
        end,
    },]]
    {
        "elkowar/yuck.vim",
    },
    {
        "theprimeagen/vim-be-good",
    },
}
