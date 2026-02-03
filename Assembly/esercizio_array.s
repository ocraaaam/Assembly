array  dcd     3,5,1,78,2

len    dcd     5

       mov     r0, #array ;puntatore array
       mov     r1, #len ; puntatore lunghezza array
       ldr     r1, [r1] ;prendi indjirzzo puntato in r1 e scrivilo in r1 stesso (lunghezza array)
       mov     r2, #0 ; inizializzo la somma


ciclo  cmp     r1, #0
       beq     fine
       ldr     r3, [r0], #4 ;all'interno di r3 prendi cio che ce in r0 e incrementalo di 4 (elemento corrente)
       ;; aumento di 4 cosi che possa scorrere l'elemento visto che oguno di questi occupa 4 bytes
       sub     r1, r1, #1
       add     r2, r2, r3 ;somma += elemento corrente
       b       ciclo

fine   end