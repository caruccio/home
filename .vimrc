set scroll=1
set autowrite
set nobackup
set hls
set ignorecase
set incsearch
set nowrap
set history=1000
set nocompatible
set ruler
set ts=3
set shiftwidth=3
set nodigraph
set listchars=tab:»·,trail:·
set list
set backspace=indent,eol,start
set noautoindent
set nocindent
colors koehler
syn on
"set dir=/tmp "swap file dir

if has("gui_running")
	set mouse=a
	set guifont=DejaVu\ Sans\ Mono\ 10
	set lines=37 columns=149
endif

fun! CaptalizeCharUp()
	let s:word = expand('<cword>')
	:exe 'windo! %s/' . s:word . '/\u&/ge'
	:unlet! s:word
endfun

fun! CaptalizeCharLow()
  let s:word = expand('<cword>')
  :exe 'windo! %s/' . s:word . '/\l&/ge'
  :unlet! s:word
endfun

map \u :call CaptalizeCharUp()<CR>
map \l :call CaptalizeCharLow()<CR>
"map \U <Esc>gUiw`]a
"map \L :exe windo <Esc>guiw

