vim.cmd.set("splitright")
vim.b.lsp_zero_enable_autoformat = 0;
-- vim.api.nvim_create_autocmd("BufAdd", {
--     callback = function()
--         local file = vim.fn.expand("<afile>")
--         if not string.find(file, "%.cpp") then
--             return
--         end
--         if string.find(file, "%main.cpp") then
--             return
--         end
--         print(file)
--         vim.schedule(function()
--             local right_win = vim.fn.winnr('$')
--             if (right_win == 1) then
--                 vim.cmd("vert new")
--                 right_win = right_win + 1
--             end
--             local left_win = right_win - 1
--             local right_id= vim.fn.win_getid(right_win)
--             local left_id= vim.fn.win_getid(left_win)
--             if (vim.api.nvim_get_current_win() ~= left_id) then
--                 vim.api.nvim_set_current_win(left_id)
--                 vim.cmd(":e " .. file)
--             end
--             vim.api.nvim_set_current_win(right_id)
--             local hppFile = file:gsub("%.cpp$", ".hpp")
--             vim.cmd(":e " .. hppFile)
--             vim.api.nvim_set_current_win(left_id)
--         end)
--     end,
-- })
