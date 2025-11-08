return {
    'luukvbaal/statuscol.nvim',
    --config = function()
    -- local builtin = require 'statuscol.builtin'
    -- require('statuscol').setup {
    --     relculright = true,
    --     segments = {
    --         {
    --             sign = { namespace = { 'diagnostic/signs' }, maxwidth = 2, auto = true },
    --             click = 'v:lua.ScSa',
    --         },
    --         { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
    --         {
    --             sign = { name = { '.*' }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
    --             click = 'v:lua.ScSa',
    --         },
    --     },
    -- }
    --end,
    opts = function()
        local builtin = require 'statuscol.builtin'
        return {
            relculright = true,
            setopt = true,
            segments = {
                {
                    text = { '%C' }, -- table of strings or functions returning a string
                    click = 'v:lua.ScFa', -- %@ click function label, applies to each text element
                    hl = 'FoldColumn', -- %# highlight group label, applies to each text element
                    condition = { true }, -- table of booleans or functions returning a boolean
                    sign = { -- table of fields that configure a sign segment
                        -- at least one of "name", "text", and "namespace" is required
                        -- legacy signs are matched against the defined sign name e.g. "DapBreakpoint"
                        -- extmark signs can be matched against either the namespace or the sign text itself
                        name = { '.*' }, -- table of Lua patterns to match the legacy sign name against
                        text = { '.*' }, -- table of Lua patterns to match the extmark sign text against
                        namespace = { '.*' }, -- table of Lua patterns to match the extmark sign namespace against
                        -- below values list the default when omitted:
                        maxwidth = 1, -- maximum number of signs that will be displayed in this segment
                        colwidth = 2, -- number of display cells per sign in this segment
                        auto = false, -- boolean or string indicating what will be drawn when no signs
                        -- matching the pattern are currently placed in the buffer.
                        wrap = false, -- when true, signs in this segment will also be drawn on the
                        -- virtual or wrapped part of a line (when v:virtnum != 0).
                        fillchar = ' ', -- character used to fill a segment with less signs than maxwidth
                        fillcharhl = nil, -- highlight group used for fillchar (SignColumn/CursorLineSign if omitted)
                        foldclosed = false, -- when true, show signs from lines in a closed fold on the first line
                    },
                },
                {
                    sign = {
                        name = {
                            'Dap',
                            'neotest',
                        },
                        maxwidth = 2,
                        colwidth = 2,
                        auto = true,
                    },
                    click = 'v:lua.ScSa',
                },
                -- { text = { " " } },
                { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
                { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
                { text = { ' ' } },
                {
                    sign = {
                        namespace = { 'gitsigns+' },
                        maxwidth = 1,
                        colwidth = 1,
                        auto = false,
                        fillchar = ' ',
                        fillcharhl = 'StatusColumnSeparator',
                    },
                    click = 'v:lua.ScSa',
                },
            },
            ft_ignore = {
                'help',
                'vim',
                'fugitive',
                'alpha',
                'dashboard',
                'neo-tree',
                'Trouble',
                'noice',
                'lazy',
                'toggleterm',
            },
        }
    end,
}
