"--------------------- 
" tabulation settings
set expandtab
set tabstop=2
set softtabstop=2

" colors
syntax enable
colorscheme Kafka

" ui
set number
set showcmd
set cursorline
set wildmenu
set showmatch

" search
set hlsearch

" backup
set backup
set backupdir=~/.vim/tmp
set writebackup

" extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
