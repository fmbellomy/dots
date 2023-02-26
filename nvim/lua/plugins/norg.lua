local M = {}
function M.setup(plugins)
    table.insert(plugins,
        {
            "nvim-neorg/neorg",
            build = ":Neorg sync-parsers",
            opts = {
                load = {
                    ["core.defaults"] = {},
                    ["core.norg.concealer"] = {},
                    ["core.norg.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/notes",
                                univ_en = "~/notes/univ-en",
                                cse1320 = "~/notes/cse1320",
                                cse1106 = "~/notes/cse1106",
                                calc_2 = "~/notes/calc-2"
                            },
                            default_workspace = "notes",
                        }
                    }
                }
            },
            dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-treesitter/nvim-treesitter" } },
            name = "norg",
            config = true
        })
end

return M
