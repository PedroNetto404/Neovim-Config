require("nvim-treesitter.configs").setup({
  ensure_installed = { 
    "lua", 
    "javascript", 
    "c",
    "query",
    "vim",
    "html"
  },
  highlight = { 
    enable = true
  },
  indent = {
    enable = true
  }
})
