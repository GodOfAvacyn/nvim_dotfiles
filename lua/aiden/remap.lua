vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "kj", "<Esc>", {})
vim.keymap.set("n", "<leader>h", "<C-w>h", {})
vim.keymap.set("n", "<leader>l", "<C-w>l", {})
vim.keymap.set("n", "<leader>k", "<C-w>k", {})
vim.keymap.set("n", "<leader>j", "<C-w>j", {})
vim.keymap.set("n", "<leader>rr", function() vim.cmd([[:! cargo run]]) end)
vim.keymap.set("n", "<leader>C", function()
    local file = vim.fn.expand("%")
    vim.cmd("echo '"..file .."'")
    if string.find(file, "%.cpp") then
        local altFile = file:gsub("%.cpp$", ".hpp")
        vim.cmd(":e " .. altFile)
    elseif string.find(file, "%.hpp") then
        local altFile = file:gsub("%.hpp$", ".cpp")
        vim.cmd(":e " .. altFile)
    end
end)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "Nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_Y")
vim.keymap.set("v", "<leader>d", "\"_Y")
vim.keymap.set("n", "<leader>sw", function()
    local script = vim.api.nvim_buf_get_name(0)
    local pdf = string.gsub(script, ".fountain", ".pdf")
    vim.cmd(string.format( ":! afterwriting --source %s --pdf %s --overwrite", script, pdf))
end)
