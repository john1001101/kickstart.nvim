return {
  {
    'FabijanZulj/blame.nvim',
    lazy = false,
    config = function()
      vim.keymap.set('n', '<leader>bt', ':BlameToggle<CR>', { desc = 'blame: [B]lame [T]oggle' })
      require('blame').setup {}
    end,
    opts = {
      blame_options = { '-w' },
      focus_blame = false,
      virtual_style = 'right_align',
      mappings = {
        commit_info = 'i',
        stack_push = '<TAB>',
        stack_pop = '<BS>',
        show_commit = '<CR>',
        close = { '<esc>', 'q' },
      },
    },
  },
}
