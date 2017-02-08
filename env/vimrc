" Last Modified: 2017-02-08 22:34:34
set tabstop=4
set shiftwidth=4
set backspace=2
set showmatch
set ruler
set incsearch
set number
syntax on
syntax enable
set modeline
set hlsearch
set previewwindow
set number
set showcmd
set showmode
map <leader>a ggVG
set iskeyword+=_,$,@,%,#
set autoread
set noerrorbells

set nocompatible
set ignorecase
set incsearch
set hlsearch
set autoindent
set smartindent


set history=1000
set ruler
set showcmd

filetype plugin indent on

set nowrap
set sidescroll=20
set textwidth=200
set wrap
set linebreak

map <Up> gk
map <Down> gj

:colorscheme darkblue
set softtabstop=4


autocmd BufWritePre,FileWritePre * ks|call LastModified()|'s

func LastModified()
	
	if line("$") > 10
		let l = 10
	else
		let l = line("$")
	endif

	exe "1," . l . "g/Last Modified: /s/Last Modified: .*/Last Modified: " .
		\ strftime("%F %T")

endfunc



autocmd BufNewFile *.sh,*.csh,*.pl exec ":call SetTitle()" 
autocmd BufNewFile *.il      exec ":call SetSkillTitle()"

func SetTitle() 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "")
	elseif &filetype == 'csh'
        call setline(1,"\#!/bin/csh")
        call append(line("."), "")
	elseif &filetype == 'perl'
        call setline(1,"\#!/usr/bin/perl -w")
		call append(line("."), "")
	endif
		call append(line(".")+1, "\# File Name: ".expand("%")) 
		call append(line(".")+2, "\# Author: Charles Wu <charles.wu@viaeda.com>") 
		call append(line(".")+3, "\# Created Date: ".strftime("%F")) 
		call append(line(".")+4, "\# Last Modified: ".strftime("%F %T")) 
		call append(line(".")+5, "\# Tel: +86-13917126915")
		call append(line(".")+6, "\# REV: ")
		call append(line(".")+7, "")
endfunc

func SetSkillTitle()
	if &filetype == 'skill'
		call setline(1, "/*************************************************************************") 
		call append(line("."),   "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: Charles Wu <charles.wu@viaeda.com>") 
		call append(line(".")+2, "	> Created Date: ".strftime("%F")) 
		call append(line(".")+3, "	> Last Modified: ".strftime("%F %T")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
endfunc
