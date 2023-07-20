return {
    ---------
    -- MAP --
    ---------
    {
        -- Window with buffer text overview, scrollbar, and highlights
        "echasnovski/mini.map",
        keys = {
            {
                "<leader>um",
                function()
                    require("mini.map").toggle()
                end,
                desc = "Toggle MiniMap",
            },
        },
        cmd = function()
            local map = require("mini.map")
            map.setup({
                integrations = {
                    map.gen_integration.builtin_search(),
                    -- map.gen_integration.gitsigns(), FIXME: weird number 3
                    map.gen_integration.diagnostic(),
                },
            })
        end,
    },
}
