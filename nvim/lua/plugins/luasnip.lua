return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "mlaursen/vim-react-snippets",
  },
  build = "make install_jsregexp",
  config = function()
    local ls = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()
    require("vim-react-snippets").setup({})

    vim.keymap.set({ "i", "s" }, "<C-l>", function()
      if ls.expand_or_jumpable() then ls.expand_or_jump() end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-h>", function()
      if ls.jumpable(-1) then ls.jump(-1) end
    end, { silent = true })
  end,
}
