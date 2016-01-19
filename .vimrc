set encoding=utf-8
set fileencodings=utf-8,cp932,sjis,euc-jp,iso-2022-jp,utf-16le
" directry view style
let g:netrw_liststyle = 3

" line number
set number

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'itchyny/lightline.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" インデントに色を付けて見やすくする
"NeoBundle 'nathanaelkane/vim-indent-guides'

NeoBundle 'tomasr/molokai'

" NeoBundle 'stephpy/vim-php-cs-fixer'
"
NeoBundle 'vim-scripts/grep.vim'

call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

" colorscheme
"colorscheme torte
"colorscheme hybrid
colorscheme molokai

" color
set t_Co=256
syntax enable

" pasteオプション切替
imap <F10> <nop>
set pastetoggle=<F10>

" status line setting
set laststatus=2
let g:lightline = {
           \ 'colorscheme': 'wombat',
           \ 'component': {
               \ 'filename': '%f'
           \ }
      \ }

" clipboard setting
" set clipboard=unnamed

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1

"検索ハイライトON
set hlsearch

"現在行番号ハイライト
" set cursorline
" hi clear CursorLine

vnoremap * "zy:let @/ = @z<CR>n

"escape
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
set clipboard=unnamedplus

"-------------------------------------------------
"" neocomplcache設定
"-------------------------------------------------
""辞書ファイル
" autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionaries/php.dict filetype=php
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

"-------------------------------------------------
"" php-cs-fixer設定
"-------------------------------------------------
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
" let g:php_cs_fixer_level = "psr2"                 " which level ?
" let g:php_cs_fixer_config = "default"             " configuration
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
" nnoremap <silent>,pcd :call PhpCsFixerFixDirectory()<CR>
" nnoremap <silent>,pcf :call PhpCsFixerFixFile()<CR>

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

nnoremap <expr> gr ':Rgrep<CR>'
