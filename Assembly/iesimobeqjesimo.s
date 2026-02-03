veta            dcd     3,45,5,6,7,8,9,10

vetb            dcd     4,6,7,8

                ;ricercoi esimo elemtno di vett in v1

                ;       r0 lunghezza veta
                ;       r1 #veta
                ;       r2 lunghezza vetb
                ;       R3 #vetb
                ;       r4 element i esimo veta
                ;       r5 elemento j esimo vetb
                ;       r6 counter



                mov     r2, #4
                mov     r3, #vetb
                mov     r6,#0


scan_b          
                cmp     r2, #0
                beq     end_scan_b_loop

                ldr     r5, [r3], #4

                mov     r0, #8
                mov     r1, #veta

find            

                cmp     r0 ,#0
                beq     end_find

                ldr     r4, [r1], #4

                cmp     r5, r4
                beq     found

                sub     r0,r0,#1
                b       find


found           
                add     r6,r6,#1

end_find        
                sub     r2, r2, #1
                b       scan_b

end_scan_b_loop 
                mov     r0, r6




