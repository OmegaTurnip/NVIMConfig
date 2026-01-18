return {
  {
    "mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        root_markers = { ".luarc.json", ".luarc.jsonc", "selene.toml", "stylua.toml" },
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      vim.lsp.enable("lua_ls")
      -- Keybindings
      -- vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true }) -- Check hover.lua for the remapping instead of "K" instead
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
      vim.keymap.set("n", '<leader>ca', vim.lsp.buf.code_action, {noremap = true})
    end,
  },
}
