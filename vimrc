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
"colorscheme my_darkspectrum
let g:airline_theme="jellybeans"

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/dart-vim-plugin
endif

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=236 guibg=#202020
hi IndentGuidesEven ctermbg=238 guibg=#333333  
filetype plugin indent on
filetype plugin on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>r :NERDTreeToggle<CR>

nnoremap <C-t>     :tabnew<CR>
nnoremap <C-y>     :tabclose<CR>

inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-i> gT
nnoremap <C-o> gt 

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

let g:zv_file_types = { 'ruby' : 'ruby on rails 4' }

" Absolutera profile

let g:dbext_default_profile_psql_absolutera = 'type=PSQL:user=toshegg:passwd=toshegg:dbname=absolutera_dev'

let g:vim_markdown_folding_disabled=1

set tags=./tags;
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <silent><Leader>gf <C-w>gf

vmap <C-c> "+y
vmap <C-x> "+d
imap <C-v> <C-r><C-o>+

function TabLeft()
   let tab_number = tabpagenr() - 1
   if tab_number == 0
      execute "tabm" tabpagenr('$') - 1
   else
      execute "tabm" tab_number - 1
   endif
endfunction

function TabRight()
   let tab_number = tabpagenr() - 1
   let last_tab_number = tabpagenr('$') - 1
   if tab_number == last_tab_number
      execute "tabm" 0
   else
      execute "tabm" tab_number + 1
   endif
endfunction

map <silent><A-S-o> :execute TabRight()<CR>
map <silent><A-S-i> :execute TabLeft()<CR>

let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>g'

let g:user_emmet_leader_key='<C-W>'

let g:session_directory='./'
let g:session_default_name='Session'
let g:session_autosave='yes'
let g:session_autosave_periodic=1
"
au BufReadPost *.ejs set syntax=html

set laststatus=2
