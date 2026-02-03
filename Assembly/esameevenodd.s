vett          dcd     3,4,5,6,7,11,1,10

even          fill    40
odd           fill    40

              ;       r0 = len vett
              ;       r1 #vett
              ;       r2 valore corrente
              ;       r3

              mov     r0, #8
              mov     r1, #vett
              mov     r3, #0
              mov     r5, #odd
              mov     r4, #even
              mov     r7, #0
              mov     r6, #0


scan_loop     
              cmp     r0, #0
              beq     end_scan_loop

              ldr     r2, [r1], #4
              and     r3, r2, #1
              cmp     r3, #0
              beq     is_even
              ;       e dispari
              str     r2, [r5], #4
              add     r6,r6, #1 ; r6 = counter dispari
              b       next


is_even       
              str     r2, [r4], #4
              add     r7, r7, #1 ; r7 counter pari
              b       next

next          
              sub     r0,r0,#1
              b       scan_loop



end_scan_loop 


              cmp     r6, r7
              bgt     use_odd
              ;       altrimeti usa even

              mov     r1, #even
              mov     r0, r4
              b       findmax
use_odd       
              mov     r1, #odd
              mov     r0, r5
              b       findmax

findmax       

              ;       r0 len
              ;       r1 ptr 1 elemento
              ;       r2 max/min temp

              mov     r10, r1

              ldr     r2, [r1]

max_loop      

              cmp     r0, #0
              beq     end_max_loop

              ldr     r3, [r1], #4

              cmp     r3, r2
              ble     skip
              mov     r2, r3

skip          
              sub     r0,r0, #1
              b       max_loop

end_max_loop  




              ;       minimo


              ldr     r3, [r10]

min_loop      
              cmp     r0 ,#0
              beq     end_min_loop

              ldr     r9, [r1], #4

              cmp     r9, r3
              bge     skip1
              mov     r3, r9

skip1         
              sub     r0,r0,#1
              b       min_loop

end_min_loop  








