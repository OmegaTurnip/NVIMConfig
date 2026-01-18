return {
  {
    "lewis6991/hover.nvim",
    config = function()
      require("hover").setup({
        init = function()
          require("hover.providers.lsp")
        end,
        preview_opts = {
          border = "rounded",
          pad_left = 2,
          pad_right = 2,
        },
        title = false,
      })
      vim.keymap.set("n", "K", require("hover").hover, { noremap = true })
    end,
  },
}
