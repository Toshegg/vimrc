noremap j h
noremap k j
noremap l k
noremap ; l
noremap h ;

noremap <C-w>j :wincmd h<CR>
noremap <C-w>k :wincmd j<CR>
noremap <C-w>l :wincmd k<CR>
noremap <C-w>; :wincmd l<CR>

execute pathogen#infect()

syntax enable
set autoindent
set number
set tabstop=2 shiftwidth=2 expandtab

se t_Co=16
colorscheme darcula

autocmd VimEnter * IndentGuidesEnable
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=236
hi IndentGuidesEven ctermbg=238

filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-o> :NERDTreeToggle<CR>

nnoremap <C-t>     :tabnew<CR>
nnoremap <C-y>     :tabclose<CR>

inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <Leader>j gT
nnoremap <Leader>; gt 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <F7> <ESC>:w <CR>:!rails s<CR>

menu Exec.Rails    :rails s <CR>
menu Exec.Ruby    :!ruby % <CR>
menu Exec.Cpp   :w !g++ % -o %< && ./%< <CR>
menu Exec.C   :w !gcc % -o %< && ./%< <CR>

map <F9> :emenu Exec.<Tab>

" ???
inoremap <C-@> <C-x><C-o>

nmap <Space> i_<Esc>r

set backspace=start,eol,indent

map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
