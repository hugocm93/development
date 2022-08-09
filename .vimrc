set nocompatible              " be iMproved, required
"filetype off                  " required
filetype plugin on

execute pathogen#infect()
call pathogen#helptags()

" ###############################  Hugo's modifications #################################
"
" Menu for tab
set wildmenu

" Key mappings
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map ,jj :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map ,mm <F2>
map <F2> :NERDTreeToggle<CR>

" Formatting parameters
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set statusline+=%f
set statusline+=%7*\ [%n]                                  "buffernr
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set laststatus=2

" Configuring the clipboard
set clipboard=unnamed

" Syntax colouring
syntax enable

" Setting for the find command
set path+=**

" Column limit
set cc=100

" Show command feedback on the screen
set showcmd

" Template files
nnoremap ,h :r /local/hmachado/.vim/vimFileTemplates/Template.h<CR>
nnoremap ,cpp :r /local/hmachado/.vim/vimFileTemplates/Template.cpp<CR>
nnoremap ,com :r /local/hmachado/.vim/vimFileTemplates/Comments<CR>
nnoremap ,pretty :r /local/hmachado/.vim/vimFileTemplates/Pretty<CR>
nnoremap ,cout :r /local/hmachado/.vim/vimFileTemplates/Cout<CR>
nnoremap ,ios :r /local/hmachado/.vim/vimFileTemplates/Iostream<CR>

vnoremap // y/<C-R>"<CR>

" Disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Relative line number
set relativenumber
set number

" Set hlsearch
set hlsearch

" Enable mouse
set mouse=a

" Configure tags
set tags+=~/v3o2/dependencies/tags
set tags+=~/v3o2/lib/tags
set tags+=~/v3o2/prototipos/DiametrosEstruturasSegmentadas/tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/qt
set tags+=~/.vim/tags/c++
set tags+=~/.vim/tags/include
set tags+=~/conan_storage/boost/1.75.0/tecgraf/v3o2/package/b4cf9557a183758df446dd9058601421b40166b0/tags
set tags+=~/conan_storage/cgal/5.2.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/tags
set tags+=~/conan_storage/tl-expected/20190710/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/tags
set tags+=~/conan_storage/cpprestsdk/2.10.18/tecgraf/v3o2/package/bdd715b376beff1ad18556afe901911248f941c6/tags
set tags+=~/conan_storage/range-v3/0.5.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/tags

" OmniCppComplete
let OmniCpp_NamespaceSearch = 0
let OmniCpp_GlobalScopeSearch = 0
let OmniCpp_ShowAccess = 0
let OmniCpp_ShowPrototypeInAbbr = 0 " show function parameters
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Split below
set splitbelow

"Solving paste problem
set t_BE=

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.tpp set filetype=cpp

set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8

colorscheme elflord
