         ;       compito del 19 settembre 2024
         ;

vett_a   dcd     4,5,34,54,6,45,6,45,43,2 ; lenght 10

vett_b   fill    40 ; lenMax 40 byte

         ;       r0 len vet_a
         ;       r1 ptr vet_a
         ;       r2 elemento i-esimo (attuale) di vett_a
         ;       r3 ptr a vett_b
         ;       r4 len vett_b
         ;       r5 k
         ;       r6 registro temporaeno

         mov     r0, #10
         mov     r1, #vett_a
         mov     r3, #vett_b
         mov     r4, #0
         mov     r5,#3

loop     

         cmp     r0, #0
         beq     end_loop


         ;test   divsibilita r2 con r5
         ;       se test fallisce branch a skip


         ldr     r2,[r1], #4
         mov     r6, r2
         cmp     r6, r5
         bne     skip


         str     r2, [r3] , #4
         add     r4, r4, #1

skip     
         sub     r0, r0, #1
         b       loop

end_loop 


