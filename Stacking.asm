                              ; The_Stack.asm
2000                         Stack  equ   $2000
1000                                org   $1000
1000 93 53 21 11 10          Data   db    $93, $53, $21, $11, $10

2000                                org   $2000
2000 cf 20 00                       lds   #Stack
2003 cc 00 00                       ldd   #0000
2006 b6 10 00                       ldaa  Data
2009 b7 01                          tfr   a,b
200b ce 10 01                       ldx   #Data+1
200e 36                             psha
200f 86 02                          ldaa  #$02
2011 e6 e4                          ldab  a,x
2013 37                             pshb
2014 34                             pshx
2015 16 20 1d                       jsr   Here
2018 30                             pulx
2019 32                             pula
201a 33                             pulb
201b 20 06                          bra   Finish
201d b6 10 02               Here    ldaa  Data+2
2020 c7                             clrb
2021 09                             dex
2022 3d                             rts
2023 3f                     Finish  swi
                                    end