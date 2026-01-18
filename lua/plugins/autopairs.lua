return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
      })
    end,
  },
}

-- **What it does:**
--
-- Type `(` and it automatically adds `)` with cursor in the middle:
-- (|)  ← cursor is here
