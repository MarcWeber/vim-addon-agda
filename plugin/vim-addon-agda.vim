let s:efm = 'set efm=%m\ at\ %f:%l\\,%c%s,%f:%l\\,%c%m'
if exists('*actions#AddAction')
  call actions#AddAction('run agda', 
   \ {'action': funcref#Function('actions#CompileRHSSimple',
        \                        {'args': [[s:efm], ["agda", funcref#Function('return expand("%")')]]})})
endif
augroup AGDA
  autocmd BufRead,BufNewFile *.agda setlocal filetype=agda
augroup end
