return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    --    config = true,

    opts = ...,
    config = function()
        local gruvbox = require("gruvbox")
        gruvbox.setup({
            transparent_mode = true,
            overides = {

            }
        })
        vim.cmd("colorscheme gruvbox")
    end,
}
