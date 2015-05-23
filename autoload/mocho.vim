let s:mocho = [
        \"(●・▽・●)", 
        \"(o・∇・o)", 
        \"(*゜0゜)", 
        \"(・ρ・*)", 
        \"(-^〇^-)"
        \]

function! mocho#kaomoji()
    call append(".", mocho#echo())
endfunction

function! mocho#echo()
    let localtime = localtime()
    let emoji = len(s:mocho)
    let rand = localtime % emoji
    return s:mocho[rand]
endfunction
