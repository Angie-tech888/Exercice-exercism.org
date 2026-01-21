"
" Tests whether a number is equal to the sum of its digits, 
" each raised to the power of the overall number of digits.
"
function! IsArmstrongNumber(number) abort
  let l:number_str = string(a:number)
  let l:length = strlen(l:number_str)
  let l:sum = 0

  for l:digit in split(l:number_str, '\zs')
    let l:sum += pow(str2nr(l:digit), l:length)
  endfor

  return l:sum == a:number
endfunction