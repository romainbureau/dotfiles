function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! FileMtime()
  let ext=tolower(expand("%:e"))
  let fname=tolower(expand('%<'))
  let filename=fname . '.' . ext
  let msg=""
  let msg=msg." ".strftime("%b/%d/%y %H:%M:%S",getftime(filename))
  return msg
endf

set statusline=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#CursorColumn#
set statusline+=\ %l:%c
set statusline+=\ %p%%
set statusline+=\ :
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{FileMtime()}
set statusline+=%m
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %y
