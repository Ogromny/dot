local M = {}

function M.set(table)
    for key, value in pairs(table) do
        vim.o[key] = value
    end
end

function M.set_global(table)
    for key, value in pairs(table) do
        vim.g[key] = value
    end
end

function M.cmd(table)
    for _, value in pairs(table) do
        vim.cmd(value)
    end
end

return M
