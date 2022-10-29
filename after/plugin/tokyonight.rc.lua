local status, cs = pcall(require, 'tokyonight')

if (not status) then return end

cs.setup {
  style = "night",

}

vim.cmd [[colorscheme tokyonight]]
