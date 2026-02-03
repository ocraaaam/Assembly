               ;compitod'esame

vett_a         dcd     1,2,3,4,7,6,7,8,9,10
               ;lenght 10 elementi


               ;       r0 lunghezza vettore
               ;       r1 puntatoer al vattore
               ;       r2 elementi i-esimo (atttuale)
               ;       r3 elemento (i+1)-esimo (attuale + 1)

               ;       r4 esito del test 0 = vettore non ordinato 1 = vettore ordinato


               mov     r0, #10
               mov     r1, #vett_a

loop           ;       confronto la lunghezza dle vettore se è 1 ho finito la ricerca

               cmp     r0,#1
               beq     end_loop


               ldr     r2,[r1]
               ldr     r3, [r1,#4]
               cmp     r2, r3
               bgt     not_ordered

               add     r1,r1,#4
               sub     r0, r0, #1
               b       loop


end_loop       
               ;vettoreordinato
               mov     r4,#1
               b       fine_programma

not_ordered    
               ;vettorenon ordinato
               mov     r4,#0

fine_programma 

