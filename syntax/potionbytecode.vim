if exists("b:current_syntax")
    finish
endif

syntax keyword potionbcodeKeyword call return
syntax keyword potionbcodeKeyword getupval getlocal setupval setlocal
syntax keyword potionbcodeKeyword move msg loadpn proto bind mult

syntax keyword potionbcodeFunction loadk join string print

syntax match potionbcodeComment "\v;.*$"

highlight link potionbcodeKeyword Keyword
highlight link potionbcodeFunction Function
highlight link potionbcodeComment Comment
let b:current_syntax = "potionbytecode"
