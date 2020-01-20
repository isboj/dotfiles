if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

" True Color対応
if has('nvim')
  " For Neovim 0.1.3 and 0.1.4
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  " Or if you have Neovim >= 0.1.5
  if (has("termguicolors"))
    set termguicolors
  endif
elseif has('patch-7.4.1778')
  set guicolors
endif

filetype plugin indent on

" ### load ###
runtime! ./options.rc.vim
runtime! ./keymap.rc.vim
" dein(plugin) の読み込み
runtime! ./dein.vim
" deinで読み込んだカラースキーム
colorscheme gruvbox 
syntax enable

runtime! ./functions.rc.vim



