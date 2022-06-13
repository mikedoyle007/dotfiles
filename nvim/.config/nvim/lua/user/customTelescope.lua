local M = {}

function M.edit_neovim()
  -- require("telescope.builtin").find_files({
  require('telescope.builtin').find_files({
    path_display = { 'shorten' },
    cwd = '~/dotfiles',
    prompt_title = '~ dotfiles ~',
    height = 10,
    search_dirs = {
      '~/dotfiles/nvim/.config/nvim',
      '~/dotfiles/tmux/.config/tmux',
      '~/dotfiles/kitty/.config/kitty',
    },

    layout_strategy = 'horizontal',
    -- layout_strategy = 'vertical',
    -- layout_strategy = 'center',
    -- layout_strategy = 'cursor',
    layout_options = {
      preview_width = 0.75,
    }
  })
end

function M.curr_buff()
  -- local theme = require('telescope.themes').get_ivy()
  local opts = {sorting_strategy='ascending', layout_config={prompt_position='top'}}
  require('telescope.builtin').current_buffer_fuzzy_find(opts)
  print('reloaded')
end

function M.diagnostics()
  local opts ={sorting_strategy='ascending', layout_config={prompt_position='top'}}
  local theme = require('telescope.themes').get_ivy(opts)
  require('telescope.builtin').diagnostics(theme)
end

return M
