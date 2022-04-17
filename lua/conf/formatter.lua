require("formatter").setup(
    {
        filetype = {
            lua = {
                -- luafmt
                function()
                    return {
                        exe = "luafmt",
                        args = { "--indent-count", 2, "--stdin" },
                        stdin = true
                    }
                end
            },
            go = {
                function()
                    return {
                        exe = "gofmt",
                        stdin = true
                    }
                end
            },
        }
    }
)
