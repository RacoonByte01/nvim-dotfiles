
return {
    {
        "neovim/nvim-lspconfig",
        config = function()

            -- Enable language servers
            vim.lsp.enable({
                "lua_ls",
                "bashls",
                "jsonls",
                "ast_grep",
                "pylsp",
            })

            -- Rounded borders (Neovim 0.11+)
            vim.o.winborder = "rounded"

            -- LSP keymaps
            vim.keymap.set("n", "K", function()
                vim.lsp.buf.hover({ border = "rounded" })
            end)

            vim.keymap.set("n", "<C-k>", function()
                vim.lsp.buf.signature_help({ border = "rounded" })
            end)

            -- Diagnostics
            vim.diagnostic.config({
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN] = " ",
                        [vim.diagnostic.severity.INFO] = "󰋼 ",
                        [vim.diagnostic.severity.HINT] = "󰌵 ",
                    },
                },
            })

        end,
    },
}
