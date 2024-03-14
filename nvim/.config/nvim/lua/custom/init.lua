local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.scrolloff = 7

vim.filetype.add({ filename = { ['Tiltfile'] = 'starlark' } })
