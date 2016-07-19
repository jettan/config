set nocompatible
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set copyindent
set cindent
set laststatus=2
set list
set listchars=tab:›—,trail:␣,extends:▶,precedes:◀
set cinkeys=0{,0},0),o,O,!^F
set cino=g0,Ls,N-s,(s,U1,m1,j1,J1,#1,l1
set mouse=a
set nowrap
set colorcolumn=+1
set showcmd
set hlsearch
set nrformats=octal,hex,alpha
set updatetime=500
set timeoutlen=300
set ttimeoutlen=50
set foldmethod=marker
set history=200
set viminfo='100,s10,h,%
set statusline=%<%f\ %h%w%m%r\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}%=%-14.(%4l/%L,%c%V%)\ %P
set guioptions=ac
let g:c_no_curly_error=1

nnoremap K i<Cr><Esc>
nmap <Leader>o VaBJds{
nmap <Leader>b i{<Cr><Esc>o}<Esc>k^
nnoremap <Leader>S vip:sort<Cr>
nnoremap <Leader>n :NERDTreeToggle<Cr>
nnoremap <Leader>f :NERDTreeFind<Cr>
noremap <MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>

syntax on
colorscheme trusty

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'hallison/vim-markdown'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'The-NERD-commenter'
Bundle 'The-NERD-tree'
Bundle 'speeddating.vim'
Bundle 'VisIncr'
Bundle 'vis'
Bundle 'Rename2'
Bundle 'JSON.vim'
Bundle 'glsl.vim'
Bundle 'django.vim'
Bundle 'jade.vim'
Bundle 'bkad/CamelCaseMotion'
Bundle 'openscad.vim'
Bundle 'groenewege/vim-less'
Bundle 'guns/xterm-color-table.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'de-vri-es/vim-urscript'
Bundle 'Shougo/vimproc.vim'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'eagletmt/neco-ghc'
Bundle 'ShowMarks'

let g:showmarks_enable=0
let g:haddock_browser='xdg-open'
let g:necoghc_enable_detailed_browse=1

if has('python')

	Bundle 'UltiSnips'
	let g:UltiSnipsSnippetDirectories=["ultisnips"]
	let g:UltiSnipsExpandTrigger="<c-space>"
	xnoremap <silent> <tab> :call UltiSnips#SaveLastVisualSelection()<cr>gvs
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

	if v:version > 703
		Bundle 'Valloric/YouCompleteMe'
		nnoremap <Leader>k <Esc>:YcmCompleter GoToDefinitionElseDeclaration<Cr>
		let g:ycm_key_list_select_completion = ['<Down>']
		let g:ycm_key_list_previous_completion = ['<Up>']
		let g:ycm_allow_changing_updatetime=0
		set completeopt-=preview
		let g:ycm_add_preview_to_completeopt=0
		let g:ycm_global_ycm_extra_conf = '~/.vim/default_ycm_extra_conf.py'
		let g:ycm_semantic_triggers={'haskell' : ['.']}
	endif

endif

if filereadable($HOME . "/.vimrc.local")
	source ~/.vimrc.local
endif

call vundle#end()

filetype plugin on
filetype indent on
