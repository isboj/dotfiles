"===個人用vim設定ファイル===
 
"==背景に関して(vimhybrid用に設定している箇所があるので注意)==
syntax on
colorscheme tender
 
"==エディタ全般==
"swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" 不可視文字を表示
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:≫-,trail:.,nbsp:%
" 行番号を表示
set number
" 対応括弧をハイライト表示する
set showmatch
"タブ幅をスペース4つ分にする
set tabstop=4
"tabを半角スペースで挿入する
set expandtab
"vimが自動で生成する（読み込み時など）tab幅をスペース4つ文にする
set shiftwidth=4
" 改行時などに、自動でインデントを設定してくれる
set smartindent
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" クリップボードを使う
set clipboard+=unnamedplus
" always show signcolumns
set signcolumn=yes
" dont't give |ins-completion-menu| messages
set shortmess+=c
" 保存されていないファイルがあるときは確認
set confirm
" 保存されていないファイルがあるときでも別のファイルを開く
set hidden
" 外部でファイルが変更された場合は読み直す
set autoread
" 反映されるまでの時間
set updatetime=100

"==検索設定==
"大文字/小文字の区別なく検索する
set ignorecase
"検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
"検索時に最後まで行ったら最初に戻る
set wrapscan
