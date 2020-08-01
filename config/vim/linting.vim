" General linting of files
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1

" General fixing
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace']
" \}

let g:ale_fix_on_save = 1

" Disable auto-completion as it's the job of coc
let g:ale_completion_enabled = 0
