" ### GitGutter ###
"let g:gitgutter_highlight_lines=1
"let g:gitgutter_highlight_linenrs=1
let g:gitgutter_async=0
let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_sign_allow_clobber=1
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

" ### keymap ###
" Hunkの移動
nmap <Leader>hj <Plug>(GitGutterNextHunk)
nmap <Leader>hk <Plug>(GitGutterPrevHunk)
" Hunkのstage
nmap <Leader>hs <Plug>(GitGutterStageHunk)
" Hunkのundo(revert)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
