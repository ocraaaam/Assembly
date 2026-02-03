              ;
              ;
              ;

              ;       10 elementi
vett          dcd     3,10,5,8,9,4,3,2,1,7

odd           fill    40
even          fill    40

              ;       r0 = lunghwezza di vett
              ;       r1 ptr a vett
              ;r2     eementi corrente di vett
              ;       r3 lunghezza odd
              ;       r4 ptr a odd
              ;       r5 lunghezza even
              ;       r6 ptr a even

              mov     r0, #10
              mov     r1, #vett

              mov     r4, #odd
              mov     r6, #even

              mov     r3, #0
              mov     r5, #0

scan_loop     

              cmp     r0, #0
              beq     end_scan_loop
              ldr     r2, [r1], #4
              and     r7, r2,#1 ; scannerizzo il bit significativo per caire se è - o +
              cmp     r7, #0
              beq     is_even
              ;numeor dispari
              str     r2, [r4], #4
              add     r3, r3, #1
              b       next_element


is_even       
              str     r2, [r6], #4
              add     r5, r5, #1

next_element  

              sub     r0, r0, #1
              b       scan_loop

end_scan_loop 

