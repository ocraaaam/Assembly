vett            dcd     4,6,32,64,16,12

sixteen         fill    40

                ;       r0 len vett
                ;       r1 #vett
                ;       r2 #sixteen
                ;       r3 len sixteen
                ;       r4 elemento
                ;       elemento i-esimo vett

                mov     r0, #6
                mov     r1, #vett
                mov     r2, #sixteen
                mov     r3, #0


findsixteen     

                cmp     r0, #0
                beq     end_findsixteen

                ldr     r5, [r1], #4
                and     r4, r5, #0xf

                cmp     r4, #0
                bne     skip

                str     r1, [r2], #4
                add     r3, r3, #1

skip            

                sub     r0,r0, #1
                b       findsixteen

end_findsixteen 


                ;       r3 len
                ;       r2 #vett

                ldr     r5, [r2]
max_loop        

                cmp     r3, #0
                beq     end_max_loop

                ldr     r6, [r2], #4
                cmp     r6, r5
                ble     skipmax
                mov     r5, r6

skipmax         
                sub     r3,r3, #1
                b       max_loop

end_max_loop    








