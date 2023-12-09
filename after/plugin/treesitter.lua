vim.filetype.add({extension = {wgsl = "wgsl"}})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.wgsl = {
    install_info = {
        url = "https://github.com/szebniok/tree-sitter-wgsl",
        files = {"src/parser.c", "src/scanner.c"}
    },
    filetype = "wgsl"
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
      "r",
      "glsl",
      "python",
      "javascript",
      "typescript",
      "c",
      "cpp",
      "lua",
      "vim",
      "vimdoc",
      "wgsl",
      "go",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevelstart = 99
require'nvim-treesitter.install'.compilers = { "clang++" }
