"
" This function takes any remark and returns Bob's response.
"
function! Response(remark) abort
  " your solution goes here
  let s = trim(a:remark)
  if s == '' | return 'Fine. Be that way!' | endif
  let r = [
  \ 'Whatever.',
  \ 'Whoa, chill out!',
  \ 'Sure.',
  \ "Calm down, I know what I'm doing!"]
  let q = s[len(s) - 1] == '?'
  let y = substitute(s, '[^[:alpha:]]', '', 'g') =~# '^[A-Z]\+$'
  return r[2 * q + y]
endfunction