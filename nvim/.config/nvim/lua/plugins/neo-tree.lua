return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  config = function()
    require("neo-tree").setup({

      vim.keymap.set("n", "<C-n>", ":Neotree filesystem float<CR>", { desc = "Show Fileexplorer" }),
    })
  end,
}
