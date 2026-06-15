-- Cài phím Leader là phím Cách (Space) - Cực kỳ quan trọng
vim.g.mapleader = " "

-- Tự động tải lazy.nvim nếu máy chưa có
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Kích hoạt lazy và bảo nó: "Đọc tất cả plugin trong thư mục lua/plugins nhé"
require("lazy").setup("plugins")
