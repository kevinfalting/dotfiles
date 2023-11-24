if v:progname =~? "evim"
  finish
endif

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

set colorcolumn=81
set number
