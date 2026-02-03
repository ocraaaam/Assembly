array  dcd     4,5,17,1,2,8
len    dcd     6
max    fill    4

       mov     r0, #array ;puntatore array
       mov     r1, #len
       ldr     r1, [r1] ;contatore array

       mov     r2, #0x80000000 ;max parziale

ciclo  cmp     r1, #0
       beq     fine
       ldr     r3, [r0], #4 ;elemento corrente
       sub     r1, r1, #1

       cmp     r3, r2
       ble     ciclo ; (Branch if Less than or Equal to) ;bgt maggiore greater than


       ;svroascritture
       mov     r2, r3

       b       ciclo

fine  mov r4, #max
      str r2, [r4]
      end