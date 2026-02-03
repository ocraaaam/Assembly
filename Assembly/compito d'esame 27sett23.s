 ;       compito 27 swttembre 2023

 vett_a dcd 3,6,1,2,5,6,9,3,0,5,4

 vett_b dcd 4,8,7,3

               ; ricerca di r3 in vett_a

                ;       dato un valore k, determinare se k appartieene a a

vett_a          dcd     3,6,1,2,5,6,9,3,0,5,4


                ;r0     lunghezza vett_a
                ;       r1 ptr a vett_a
                ;       r2 i-esimo elemento di vett-A
                ;r3     vlore k
                ;       r4 contatore elementi trovati
                mov r4, #0


                mov     r0, #11
                mov     r1, #vett_a
                mov     r3,#4

search_loop     

                cmp     r0, #0
                beq     end_search_loop
                ldr     r2, [r1], #4
                cmp     r2, r3
                beq     found
                sub     r0, r0, #1
                b       search_loop

end_search_loop 
                mov     r4, #0
                b       end_search

found           
                add     r4,#1
end_search      


