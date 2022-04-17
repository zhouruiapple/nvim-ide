local treesitter = require("nvim-treesitter.configs")
treesitter.setup {
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = false,
        disable = {}
    },
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "go",
        "llvm",
        "lua",
        "make",
        "yaml"
    },
    ignore_install = { "javascript" }
}
