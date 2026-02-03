                  ;
                  ;
                  ;       moltiplicazione in colonna

                  ;r1     = A
                  ;r2     = B
                  ;       r3 A * B somma parziale
                  ;r0     contatore bit
                  ;       r4 maschera

                  mov     r1,#11
                  mov     r2,#5

                  mov     r3,#0
                  mov     r3,#0
                  mov     r4,#1

multiply_loop     

                  cmp     r0, #16
                  beq     end_multiply_loop
                  and     r5,r2,r4
                  cmp     r5,#0
                  beq     skip
                  ;r3     = r3 + r1 << r0

                  lsl     r5,r1,r0
                  add     r3,r3,r5

skip              
                  add     r0,r0,#1
                  lsl     r4,r4,#1
                  b       multiply_loop

end_multiply_loop 
