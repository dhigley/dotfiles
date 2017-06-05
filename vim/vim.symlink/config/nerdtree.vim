let NERDTreeHijackNetrw = 0
let NERDTreeIgnore = ['\.pyc$']

nmap gt :NERDTreeToggle<CR>
" nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>

" View the current buffer in the NERDTree window
map <leader>r :NERDTreeFind<cr>
