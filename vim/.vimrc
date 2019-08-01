set ignorecase
set smartcase

" CtrlSpace
set hidden
let g:CtrlSpaceUseRubyBindings=1
let g:CtrlSpaceSaveWorkspaceOnSwitch=1
let g:CtrlSpaceSaveWorkspaceOnExit=1
let g:CtrlSpaceLoadLastWorkspaceOnStart=2
let g:CtrlSpaceUseMouseAndArrowsInTerm=1

" Ale
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_javascript_eslint_executable = '~/co/manage/node_modules/.bin/eslint'
let g:ale_javascript_eslint_options = '-f compact --rulesdir ~/co/manage/js_infra/eslint_rules/'
let g:ale_ruby_rubocop_options = '-c /path/to/testbed/.rubocop.yml'
let g:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint', 'flow'] }

" Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlspace_glob_command = 'ag -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 1
endif

" Misc
set shiftwidth=2
set autoindent
set smartindent
set nowrap
set mouse-=a
set backspace=indent,eol,start
set nocompatible   " Disable vi-compatibility
set noshowmode
set encoding=utf-8 " Necessary to show Unicode glyphs
set fillchars+=stl:\ ,stlnc:\
set nobackup
set backspace=2
set laststatus=2
set et
set ruler
set hls
vnoremap <C-c> "*y"
