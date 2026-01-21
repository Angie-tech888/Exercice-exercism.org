"
" Returns the number of grains (as a string) on a chessboard square given the
" grains on each square double from the previous square. 
" Throws an error if the square is below 1 or above 64.
"
" Examples:
"
"   :echo Square(16)
"   32768
"
"   :echo Square(-1)
"   E605: Exception not caught: square must be between 1 and 64
"
function! Square(number) abort
    " Validate input
    if a:number < 1 || a:number > 64
        throw 'square must be between 1 and 64'
    endif

    " For small numbers (1-30), we can calculate directly
    if a:number <= 30
        let result = 1
        for i in range(a:number - 1)
            let result = result * 2
        endfor
        return string(result)
    endif

    " For larger numbers, use string manipulation
    let result = '1'
    for i in range(a:number - 1)
        let doubled = ''
        let carry = 0
        
        " Double each digit from right to left
        for j in range(strlen(result) - 1, 0, -1)
            let digit = str2nr(result[j]) * 2 + carry
            let carry = digit / 10
            let doubled = string(digit % 10) . doubled
        endfor
        
        " Add any remaining carry
        if carry > 0
            let doubled = string(carry) . doubled
        endif
        
        let result = doubled
    endfor

    return result
endfunction

"
" Returns the total number of grains (as a string) for a filled chessboard
"
function! Total() abort
    return '18446744073709551615'
endfunction