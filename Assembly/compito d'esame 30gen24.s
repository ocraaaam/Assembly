              ;




              ;       Compito A del 30 gennaio 2024
              ;
vett_a        dcd     4,2,7,8,1,3,4,9,0
vett_a_len    fill    4

vett_b        fill    40

              ;       R0 = numero di elementi di vett_a (da determinare)
              ;       R1 = ptr a vett_a
              ;       R2 = elemento i-esimo di vett_a

              mov     r1,#vett_a
              mov     r0,#0
loop          
              ldr     r2,[r1],#4
              cmp     r2,#0
              beq     end_loop
              add     r0,r0,#1
              b       loop
end_loop      
              mov     r3,#vett_a_len
              str     r0,[r3]

              ;       r0 dimensione vett_a
              ;       R1 = ptr a vett_a
              ;       R2 = elemento i-esimo di vett_a
              ;       r3 = ptr vetta_b
              ;       r4 = lunghezza vett_b

              mov     r1, #vett_a
              mov     r2, #vett_b
              mov     r4, #0
copy_loop     

              cmp     r0, #0
              ble     end_copy_loop

              ldr     r2, [r1], #8
              str     r2, [r3], #4
              add     r4, r4, #1

              sub     r0, r0, #2

              b       copy_loop
end_copy_loop 


              ;       r4 lunghezza vet_b

              ;       r0 lunghezza vettore
              ;       r1 ptr a vett
              ;       r2 elemento curr (i-esimo) di vett
              ;       r3 max temporale



              mov     r0 ,r4
              mov     r1, #vett_b
              str     r3, [r1]


ciclo         
              cmp     r0, #1
              beq     end_max_loop
              ldr     r2, [r1], #4
              cmp     r2, r3
              ble     skip

              mov     r3, r2

skip          

              sub     r0,r0, #1
              b       ciclo
end_max_loop  
