          ;       compito d'esame 9 luglio 24

vett_a    dcd     2,6,4,2,6,0,2,4,5,6 ; lenght 10

vett_b1   fill    40 ;10 word da 4 byte (40 byte)
vett_b2   fill    40


          ;       r0 lunghezza vett_a
          ;       r1 ptr a vett_a
          ;       r2 k
          ;       r3 elemento i-esimo (attuale) di vett_a
          ;       r4 ptr a vett_b1
          ;       r5 lunghezza vett_b1

        mov     r0, #10
          mov     r1, #vett_a
          mov     r2, #3
          mov     r4, #vett_b1
          mov     r5,#0
          mov r6 , #vett_b2
          mov r7 , #0


loop      

          cmp     r0, #0
          beq     end_loop

          ldr     r3, [r1]
          cmp     r3, r2
          bge    copy_to_b2 
          ; se r3 >= r2 copia su b2 




          str     r3, [r4], #4
          add r5, r5, #1
           b next

copy_to_b2
          str   r3, [r6] ,#4
          add r7, r7, #1

next
           sub r0, r0, #1
           b loop

end_loop  


          ;r0     lunghezza vett_a
          ;       r1 ptr a vett_a
          ;       r2 k
          ;       r3 elemento i-esimo (attuale) di vett_a
          ;       r4 ptr a vett_b1
          ;       r5 lunghezza vett_b1
          ; r6 ptr a vatt_b1
          ; r7 lughezza vett_b2

          mov     r0, #10
          mov     r1, #vett_a
          mov     r2, #3
          mov     r4, #vett_b1
          mov     r5,#0
          mov r6 , #vett_b2
          mov r7 , #0

loop1     

          cmp     r0, #0
          beq     end_loop1

          ldr     r3, [r1]
          cmp     r3, r2
          bge    copy_to_b2

          str     r3, [r1]
          add     r4, r4,#1
copy_to_b2    
          add     r1, r1, #4
          sub     r0, r0, #1
          b       loop1

end_loop1 