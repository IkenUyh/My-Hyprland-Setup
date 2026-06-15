return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Kích hoạt màu sắc TokyoNight, tôi chọn bản "Storm" cho nó có chiều sâu
        vim.cmd[[colorscheme tokyonight-storm]]
    end,
}
