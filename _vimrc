" vimrc for windows gvim 

"Disable Vi compatibility
set nocompatible

" Statusline


" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab comlete
set wildmenu

"Vim with all enhancements
"source $VIMRUNTIME/vimrc_example.vim

"Add line numbers
set number

"tab size
set tabstop=4
set shiftwidth=4

"copy indent from the line above
set autoindent

"highlight search result (after pressing Enter)
set hlsearch
set incsearch

"show the maching bracket
set showmatch

"highlight currnet line
"set cursorline

"set temp folder for swap file, backup file
set backup
set backupdir=C:\Vim\tmp
set backupskip=C:\Vim\tmp\*
set directory=C:\Vim\tmp
set writebackup
set undodir=C:\Vim\undo

"color scheme 
"colorscheme darkblue
colorscheme darkblue 
syntax on

"font settings
set guifont=Consolas:h11

"enable plugins
filetyp plugin on

"Use the internal diff if available.
"Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif

function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
