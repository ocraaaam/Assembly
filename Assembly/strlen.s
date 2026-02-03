                ;       algoritmo per il calcolo della lunghezza di una stringa


                ;string dcb 'h','e','l','l','o' 0x41, 0x42, 0x43, 0x0

string          dcb     0x48, 0x45, 0x4c, 0x4c, 0x4f, 0x0, 0x0, 0x0

                ;       r0 counter
                ;       r1 ptr
                ;r2     i-th character

                mov     r1,#string

                mov     r0,#0

strlen_loop     

                ldrb    r2,[r1]
                cmp     r2,#0
                beq     end_strlen_loop
                add     r1, r1, #1
                add     r0,r0,#1
                b       strlen_loop

end_strlen_loop 

                end




