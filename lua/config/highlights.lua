local function set_line_number_highlights()
  vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#7aa2f7",
  })

  vim.api.nvim_set_hl(0, "LineNrAbove", {
    fg = "#7f8ab8",
  })

  vim.api.nvim_set_hl(0, "LineNrBelow", {
    fg = "#7f8ab8",
  })

  vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#ffffff",
    bold = true,
  })
end

set_line_number_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_line_number_highlights,
})
