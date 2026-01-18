return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        event_handlers = {{
          event = "file_opened",
          handler = function(file_path)
            -- auto close Neo-tree after opening a file
            require("neo-tree.command").execute({ action = "close" })
          end
        },},
        filesystem = {
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true,
        },
        default_component_configs = {
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
          },
        },
        window = {
          mappings = {
            ["<Tab>"] = "toggle_preview",
          },
          position = "left",
          width = 30,
        },
        enable_preview = true,
      })

      vim.keymap.set("n", "-", ":Neotree toggle<CR>", { noremap = true })
    end,
  },
}
