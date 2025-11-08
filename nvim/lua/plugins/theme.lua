return {
    {
        'zenbones-theme/zenbones.nvim',
        dependencies = 'rktjmp/lush.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.zenbones_darken_comments = 45
            vim.cmd.colorscheme 'zenwritten'
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local colors = {
                command_bg = '#e0ab75',
                visual_bg = '#d7afaf',
                darker_grey = '#636363',
                insert_bg = '#87af87',
                replace_bg = '#b96363',
                normal_bg = '#87afaf',
                light = '#eeeeee',
                dark = '#353535',
                grey = '#d7d7d7',
            }
            require('lualine').setup {
                options = {
                    globalstatus = true,
                    theme = {
                        command = {
                            a = { fg = colors.dark, bg = colors.command_bg, gui = 'bold' },
                        },
                        visual = {
                            a = { fg = colors.dark, bg = colors.visual_bg, gui = 'bold' },
                        },
                        insert = {
                            a = { fg = colors.dark, bg = colors.insert_bg, gui = 'bold' },
                        },
                        replace = {
                            a = { fg = colors.dark, bg = colors.replace_bg, gui = 'bold' },
                        },
                        normal = {
                            a = { fg = colors.dark, bg = colors.normal_bg, gui = 'bold' },
                            b = { fg = colors.light, bg = colors.dark },
                            c = { fg = colors.darker_grey, bg = colors.grey },
                            y = { fg = '#735057', bg = colors.grey },
                        },
                    },
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                },
                sections = {
                    lualine_a = { { 'mode', icons_enabled = true, icon = { '' } } },
                    lualine_b = {},
                    lualine_c = {
                        { 'filename', path = 1, shorting_target = 40, symbols = {
                            modified = '●',
                        } },
                        {
                            'diagnostics',
                            sections = { 'error', 'warn' },
                            symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
                        },
                    },
                    lualine_x = {
                        { 'filetype' },
                        { 'encoding' },
                        {
                            'fileformat',
                            symbols = {
                                unix = 'LF',
                                dos = 'CRLF',
                                mac = 'CR',
                            },
                        },
                    },
                    lualine_y = {
                        { 'location', icons_enabled = true, icon = { ' ', align = 'right' } },
                    },
                    lualine_z = {},
                },
            }
        end,
    },
    { -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        ---@module "ibl"
        ---@type ibl.config,
        opts = {
            scope = { enabled = true, char = '▎' },
            indent = { char = '▏' },
        },
    },
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {
            sign = {
                enabled = false,
            },
        },
    },
}
