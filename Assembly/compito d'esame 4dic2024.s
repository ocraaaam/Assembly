              ;       compito d'esame 4 dicembre 2024


vett_v        dcd     23,255,7,6,254,169,4,7,22

vett_v1       fill    36

              ;r0     numero elementi vett_v
              ;r1     ptr a vett_v
              ;r2     elemtneo i-esimo vett_v
              ;r3     ptr vett_v1
              ;r4     numero elementi vett_v1


              ;       b13 ..... b7b b6 b5 b4 b3 2b b1 b0 AND
              ;       B .. ..... 1 0 0 0 1 0 0 0 = =0x88
              ;======================================
              ;       0 ........ b7 0 0 0 b3 0 0 0



              ;
              mov     r0, #9
              mov     r1, #vett_v
              mov     r3 ,#vett_v1
              mov     r4, #0

copy_loop     

              cmp     r0, #0
              beq     end_copy_loop
              ldr     r2,[r1] , #4

              and     r5, r2, #0x88
              cmp     r5, #0x88
              bne     copy_skip

              str     r2, [r3] , #4
              add     r4, r4, #1
copy_skip     

              sub     r0, r0, #1
              b       copy_loop

end_copy_loop 



              ;       r0 lunghezza vettore
              ;       r1 ptr a vett
              ;       r2 elemento curr (i-esimo) di vett
              ;       r3 min temporale



              mov     r0 ,r4 ; dim vett
              mov     r1, #vett_v1
              str     r3, [r1], #4


ciclo_min     
              cmp     r0, #1
              beq     end_loop_min
              ldr     r2, [r1], #4
              cmp     r2, r3
              ble     skip

              mov     r3, r2

skip          

              sub     r0,r0, #1
              b       ciclo_min
end_loop_min  
