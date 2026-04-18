return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "TreeToggle" },
    -- { "<leader>w", "<cmd>NvimTreeToggle<cr>", desc = "TreeToggle" },
  },
  config = function()
    require("nvim-tree").setup {
      filters = {
        git_ignored = false,
        dotfiles = false,
      },
    }
  end,
}
