return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")

      ts.setup({})

      ts.install({
        "go",
        "gomod",
        "gowork",
        "gosum",
        "python",
        "cpp",
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "go",
          "gomod",
          "gowork",
          "gosum",
          "python",
          "cpp",
          "c",
          "lua",
          "vim",
          "query",
        },
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "go",
          "gomod",
          "gowork",
          "gosum",
          "cpp",
          "c",
          "lua",
          "vim",
          "query",
        },
        callback = function()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
