set ttimeoutlen=50

" let ESC close the command-t window
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

" use pwd as the root path instead of traversing upward to the SCM for the root
" let g:CommandTTraverseSCM = 'pwd'

" let command-t show dotfiles in the file window all of the time
" let g:CommandTAlwaysShowDotFiles = 1

" command-t recurses into "dot-directories" when performing its initial scan
" let g:CommandTScanDotDirectories = 1

" have the command-t window appears at the top of the screen
" let g:CommandTMatchWindowAtTop = 1

" have matches show in reverse order with the best match at the top
" used in conjunction with CommandTMatchWindowAtTop
" let g:CommandTMatchWindowReverse = 0
