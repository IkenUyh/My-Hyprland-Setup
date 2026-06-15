return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons' 
    },
    config = function()
        local builtin = require('telescope.builtin')
        
        -- Cài đặt phím tắt
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    end
}
