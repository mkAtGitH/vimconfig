filetype plugin indent on
" show existing tab with 3 spaces width
set tabstop=3
" when indeting with '>', use 3 spaces with
set shiftwidth=3
" on pressing tab, insert 3 spaces
set expandtab

" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
   :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif

set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
   :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif

set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
   " undofile - This allows you to use undos after exiting and restarting
   " This, like swap and backups, uses .vim-undo first, then
   "         ~/.vim/undo
   " :help undo-persistence
   " This is only present in 7.3+

   if isdirectory($HOME . '/.vim/undo') == 0
      :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
   endif

   set undodir=./.vim-undo//
   set undodir+=~/.vim/undo//
   set undofile
endif
