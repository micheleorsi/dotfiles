" Disable warnings
let g:vim_json_warnings = 0

" Don't hide quotes
setlocal conceallevel=0

" lint entire buffer or visual selected lines
command! -buffer -range=% Lint let myview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!jsonLint" |
  \ call winrestview(myview)
