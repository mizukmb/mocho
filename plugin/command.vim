let s:save_cpo = &cpo
set cpo&vim

command! Mocho : call mocho#kaomoji()

let s:mochoturn = [
    \"(●・▽・●)",
    \"( ●・▽・)",
    \"(  ●・▽ )",
    \"(   ●・▽)",
    \"(    ●・)",
    \"(      ●)",
    \"(       )",
    \"(●      )",
    \"(・●    )",
    \"(▽・●   )",
    \"(・▽・● )"
    \]

function! StatusMocho()
  let num = (get(w:, "num", -1) + 1) % len(s:mochoturn)
  let w:['num'] = num
  return s:mochoturn[num]
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
