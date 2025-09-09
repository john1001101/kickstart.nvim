return {
  'github/copilot.vim',
  version = '*',
  config = function()
    -- Copilot will use <Tab> to accept current suggestion
    -- If <Tab> is used elsewhere then Copilot takes precedence until suggestion is dismissed.
    vim.keymap.set('n', '<leader>ce', ':Copilot enable<CR>', { desc = '[C]opilot [E]nable' })
    vim.keymap.set('n', '<leader>cd', ':Copilot disable<CR> ', { desc = '[C]opilot [D]isable' })
    vim.keymap.set('n', '<leader>cp', ':Copilot panel<CR> ', { desc = '[C]opilot [P]anel' })

    -- MAPS
    --
    vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)', { desc = 'Accept word' })
    vim.keymap.set('i', '<C-K>', '<Plug>(copilot-previous)', { desc = 'Previous' })
    -- vim.keymap.set('i', '<C-J>', '<Plug>(copilot-next)', { desc = 'Next' })
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', { desc = 'Accept suggestion', expr = true, replace_keycodes = false })
    vim.g.copilot_no_tab_map = true
    vim.keymap.set('i', '<C-H>', '<Plug>(copilot-dismiss)', { desc = 'Dismiss' })
    vim.keymap.set('i', '<C-CR>', '<Plug>(copilot-accept-line)', { desc = 'Accept Line' })

    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = 'solarized',
      -- group = ...,
      callback = function()
        vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
          fg = '#555555',
          ctermfg = 8,
          force = true,
        })
      end,
    })
  end,
}
