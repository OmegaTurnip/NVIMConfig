-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme("tokyonight")
--     end,
--   },
-- } 
-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--       require("catppuccin").setup({
--         flavour = "macchiato", -- latte, frappe, macchiato, mocha
--       })
--       vim.cmd.colorscheme("catppuccin")
--     end,
--   },
-- }
return {
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("nord")
    end,
  },
}
-- return {
--   {
--     "morhetz/gruvbox",
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme("gruvbox")
--     end,
--   },
-- }
-- return {
--   {
--     "dracula/vim",
--     name = "dracula",
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme("dracula")
--     end,
--   },
-- }
