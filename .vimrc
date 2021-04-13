set autoindent
set number
set cindent
set ts=4
set shiftwidth=4
set hls
set smartcase " 검색어에 대문자가 포함되어 있다면 대소문자를 무시하지 않는다.
set incsearch " 검색시 한 글자씩 입력할 때마다 검색을 수행합니다.
set autoread " 다른곳에서 파일이 수정되었을때 autoread함.
set background=dark " 배경색 dark
set nobackup
set cursorline " 커서가 있는 줄을 하이라이트처리해준다.
set laststatus=2 " 마지막 윈도우에 status line을 표시할지의 여부를 설정할 수 있습니다. 기본값은 1.
set linebreak " 한 줄이 너무 길어서 화면을 넘어가면, 한 줄을 여러 줄로 표현하게 되는데 이 옵션을 설정해두면 단어 단위로 라인이 잘립니다. 기본값은 off.
set showmatch " 짝이 맞는 괄호에 Highlighting을 해주는 효과
set smartindent " 언어에 맞게 indent를 해줌.
set shiftwidth=4  " shift를 4칸으로 ( >, >>, <, << 등의 명령어)
set tabstop=4 " tab을 4칸으로
set expandtab " tab 대신 띄어쓰기로
set title " 제목을 표시
set wmnu " tab 자동완성시 가능한 목록을 보여줌
set ruler " 하단에 현재 커서의 위치를 표시해준다
set showcmd " 명령어 보여줌
set visualbell "beep 대신에 visual bell 사용
set wildmenu " 자동완성을 도와줌
set backupcopy=yes " Overwrite the original backup file

"colorscheme darkblue

" For Vundle!!!!!

set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'SrcExpl'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic' " Grammar checker
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'mattn/vim-lsp-settings'

call vundle#end() " required
filetype plugin indent on " required

syntax on " 문법 하이라이트 킴

" Settings for Asnycomplete.vim
" Tab completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" Force refresh completion
imap <c-space> <Plug>(asyncomplete_force_refresh)

" Set NERDTree shortcuts
" Open NERDTree
nnoremap <S-Tab> :NERDTreeToggle<CR>
" Find
nnoremap <S-F> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
