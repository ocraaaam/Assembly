vett     dcd     4,5,6,7,8,9,16

v1       fill    40

         ;       ro len vett
         ;       r2 #ptr vett
         ;       r3 elemento corrente
         ;       r6 n elementi v1
         ;r9     #ptr v1

         mov     r1, #vett
         mov     r0, #0

loop     

         ldr     r3, [r1],#4
         cmp     r3, #0
         beq     end_loop
         add     r0,r0,#1
         b       loop

end_loop 

         mov     r1, #vett
         mov     r6, #0 ; n elementi v1
         mov     r9, #v1


div      

         cmp     r0, #0
         beq     end_div

         ldr     r4, [r1], #4
         and     r5, r4, #3

         cmp     r5, #0
         bne     next

         str     r4, [r9], #4
         add     r6,r6,#1

next     
         sub     r0,r0,#1
         b       div

end_div  

         mov     r2, #v1
         mov     r0,r6
         ldr     r10, [r2] ; min, max temporale

max      

         cmp     r0, #0
         beq     end_max

         ldr     r7, [r2], #4
         cmp     r7, r10
         ble     skip

         mov     r10, r7

skip     

         sub     r0,r0,#1
         b       max

end_max  

         mov     r0,r6
         mov     r2, #v1
         ldr     r11, [r2]


min      
         cmp     r0,#0
         beq     end_min

         ldr     r8, [r2], #4
         cmp     r8, r11
         bge     skip1

         mov     r11, r8

skip1    

         sub     r0,r0,#1
         b       min

end_min  





