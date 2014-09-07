" .vimrc - File by Micah Hausler

noremap ; :

"sets line numbers to ON
set number
set tabstop=4
set expandtab
set shiftwidth=4

"Sets history to x amt of records
set history=700 

" Enable filetype plugin
filetype plugin on
filetype indent on

"Always show current position
set ruler


"Highlight search things
set hlsearch

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

syntax enable "Enable syntax hl

"set shell=/bin/bash

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

set ls=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


" Look for mode type in first 5 lines
"set modeline=5
