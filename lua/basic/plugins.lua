local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://ghproxy.com/github.com/wbthomason/packer.nvim.git', install_path })
    vim.cmd 'packadd packer.nvim'
end

local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

            -- 安装其它插件
            -- nvim-tree
            use {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    -- 依赖一个图标插件
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
                    require("conf.nvim-tree")
                end
            }
            -- theme
            use {
                'ful1e5/onedark.nvim',
                config = function()
                    require("conf.onedark")
                end
            }

            --状态栏插件
            use {
                "nvim-lualine/lualine.nvim",
                requires = { "kyazdani42/nvim-web-devicons", opt = true },
                config = function()
                    require("conf.lualine")
                end
            }
            -- bufferline 显示标签页,与lualine配合使用
            use {
                "akinsho/bufferline.nvim",
                config = function()
                    require("conf.bufferline")
                end
            }

            -- 模糊查找
            use {
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim", -- Lua 开发模块
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    require("conf.telescope")
                end
            }

            -- LSP 基础服务
            use {
                "neovim/nvim-lspconfig",
                config = function()
                    require("conf.nvim-lspconfig")
                end
            }

            use {
                "mhartington/formatter.nvim",
                config = function()
                    require("conf.formatter")
                end
            }

            --Nvim LSP 客户端的快速入门配置
            use "neovim/nvim-lspconfig"
            use {
                "hrsh7th/nvim-cmp",
                requires = {
                    "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
                    --以下插件可选，可以根据个人喜好删减
                    "onsails/lspkind-nvim", --美化自动完成提示信息
                    "hrsh7th/cmp-buffer", --从buffer中智能提示
                    "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
                    "octaltree/cmp-look", --用于完成英语单词
                    "hrsh7th/cmp-path", --自动提示硬盘上的文件
                    "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
                    "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
                    "hrsh7th/cmp-emoji", --输入: 可以显示表情
                },
                config = function()
                    require("conf.nvim-cmp")
                end
            }

            -- 代码段提示
            use {
                "L3MON4D3/LuaSnip",
                requires = {
                    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
                    "rafamadriz/friendly-snippets" --代码段合集
                },
                config = function()
                    require("conf.luasnip")
                end
            }

            --语法高亮
            use {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate',
                config = function()
                    require("conf.nvim-treesitter")
                end
            }

            use {
                "voldikss/vim-floaterm",
                config = function()
                    require("conf.vim-floaterm")
                end
            }

        end,
        -- 使用浮动窗口
        config = {
            max_jobs = 16,
            git = {
                default_url_format = "http://ghproxy.com/github.com/%s"
            },
            display = {
                open_fn = function()
                    return require("packer.util").float({ border = 'single' })
                end
            }
        }
    }
)
