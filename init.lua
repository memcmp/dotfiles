-- Basic options
vim.opt.compatible = false
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.foldenable = false
vim.opt.number = true
vim.opt.clipboard = "unnamed"
vim.opt.conceallevel = 2
vim.opt.completeopt = "noinsert"


vim.g["deoplete#enable_at_startup"] = 1


require("config.lazy")

--vim.api.nvim_set_hl(0, 'LineNr', { bg='none' })
vim.api.nvim_command('highlight clear LineNr')

local map = vim.keymap.set

-- Leader mappings
map("n", "<Leader>e", ":e <C-R>=expand('%:p:h') . '/' <CR>")
map("n", "<Leader>s", ":sp <C-R>=expand('%:p:h') . '/' <CR>")
map("n", "<Leader>v", ":vsp <C-R>=expand('%:p:h') . '/' <CR>")
map("n", "<Leader>t", ":FZF<CR>")
map("n", "<Leader>f", ":Rg<CR>")
map("n", "<Leader>d", ":ALEGoToDefinition -vsplit<CR>")
map("n", "<Leader>r", ":ALEFindReferences -relative<CR>")
map("n", "<Leader>h", ":ALEHover<CR>")
map("n", "<Leader>g", ":vertical Git<CR>")

vim.keymap.set({'n', 'v'}, '<Leader>cc', ':PChatNew<CR>', { noremap = true, silent = true })

-- Tab completion
vim.keymap.set("i", "<TAB>", function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<TAB>"
end, { expr = true })

local autocmd = vim.api.nvim_create_autocmd

-- FileType specific settings
autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "typescript.tsx" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set("n", "<Leader>d", "ge<CR>", { buffer = true })
    vim.keymap.set("n", "k", "gk", { buffer = true })
    vim.keymap.set("n", "j", "gj", { buffer = true })
    vim.opt_local.linebreak = true
  end,
})

autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.fn["deoplete#custom#buffer_option"]("auto_complete", false)
  end,
})
