if vim.g.vscode then
    -- VSCode extension
    require('common')
    vim.opt.clipboard:append { 'unnamedplus' }
else
    -- ordinary Neovim
    require('common')
    require('base')
    require('plugins')
    vim.opt.clipboard:append { 'unnamedplus' }
end

