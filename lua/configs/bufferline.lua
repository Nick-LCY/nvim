local M = {}
function M.setup()
  require("bufferline").setup {
    options = {
      numbers = "none",
      diagnostics = "nvim_lsp",
      separator_style = "slant",
      show_tab_indicators = true,
      show_buffer_close_icons = false,
      show_close_icons = false
    }
  }
end

return M

