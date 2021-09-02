" numtodos/plugin/init.vim
" Author: Keith Miyake
" License: GPLv3

if (exists('g:loaded_numtodos'))
    finish
endif

lua require('numtodos')

let g:loaded_numtodos = 1
