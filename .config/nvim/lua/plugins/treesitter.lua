return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
    dependencies = {
        "nushell/tree-sitter-nu"
    },
    build = ":TSUpdate"
}
