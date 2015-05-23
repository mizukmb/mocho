let s:mocho = [
        \"(●・▽・●)", 
        \"(o・∇・o)", 
        \"(*゜0゜)", 
        \"(・ρ・*)", 
        \"(-^〇^-)"
        \]

function! mocho#kaomoji()
    let rand = mocho#rand()
    call append(".", s:mocho[rand])
endfunction

function! mocho#rand()
    let localtime = localtime()
    let emoji = len(s:mocho)
    let rand = localtime % emoji
    return rand
endfunction
