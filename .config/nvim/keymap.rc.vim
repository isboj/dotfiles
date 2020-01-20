" <leader>はspaceにする
let mapleader = "\<Space>"

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><
nnoremap <S-Right> <C-w>>
nnoremap <S-Up>    <C-w>-
nnoremap <S-Down>  <C-w>+

" 一つ前のファイルを開く
nnoremap <silent> <leader>b :b #<Enter>

" terminal mode
tnoremap <silent> <ESC> <C-\><C-n>

"NERDTree
nnoremap <leader>t :NERDTreeToggle<Enter>
