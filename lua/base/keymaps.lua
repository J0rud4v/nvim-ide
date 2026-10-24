-- Global keymaps (independent of plugins)
local map = function(lhs, rhs, opts)
    opts = vim.tbl_deep_extend("force", {
        noremap = true,
        silent = true,
    }, opts or {})

    vim.keymap.set("n", lhs, rhs, opts)
end

-- File explorer
map("<leader>e", vim.cmd.NvimTreeToggle, { desc = "Toggle NvimTree" })

-- Buffer navigation
map("<leader>1",  vim.cmd.bfirst,     { desc = "First buffer" })
map("<leader>0",  vim.cmd.blast,      { desc = "Last buffer" })
map("<Tab>",      vim.cmd.bnext,      { desc = "Next buffer" })
map("<S-Tab>",    vim.cmd.bprevious,  { desc = "Prev buffer" })
map("<leader>bd", "<cmd>bdelete<CR>", { desc = "Cerrar Buffer" })

-- Folding
map("<space><CR>", "za", { noremap = true, silent = true, desc = "Toggle fold" })

-- LSP diagnostics
map("<leader>d",  vim.diagnostic.open_float, { desc = "LSP: Mostrar diagnóstico flotante" })
map("[d",         vim.diagnostic.goto_prev,  { desc = "LSP: Diagnóstico anterior" })
map("]d",         vim.diagnostic.goto_next,  { desc = "LSP: Diagnóstico siguiente" })
map("<leader>q",  vim.diagnostic.setloclist, { desc = "LSP: Enviar diagnósticos a loclist" })
