               ;       compito b

vett_a         dcd     9,2,3,5,6,2,2,8


               ;       r0 = len vett_a
               ;       r1 = ptr a vett_a
               ;       r2 = 1 elemento array, min temporale
               ;       r5 = valore corrente
               ;       r6 = max temp
               ;       r7 = k = max-min/2
               ;       r9 = numero eleementi a maggiori di k



               mov     r0, #8 ; imposto r0 alla lughezza dell'array
               mov     r1, #vett_a ; facio puntare r1 al prio elemento dell array
               ldr     r2, [r1] ; carico in r2 il primo elemento dell array


scan_min_a     
               cmp     r0, #0 ; finche la lunghezza non ìe uguale a 0
               beq     end_scan_min_a ; appena e uguaela a zero finisci il cilco
               ldr     r5, [r1], #4 ; valore corrente
               cmp     r5, r2 ; compara il valore corrnte con il minio temporaneo
               bge     skipmin ; se il valore corrente e maggiore del minimo vai avanti
               mov     r2, r5 ; il minimo sta in r2

skipmin        
               sub     r0,r0,#1 ; togli un elelemnto dalla lunghezza
               b       scan_min_a ; comtinua il ciclo

end_scan_min_a 



               mov     r0, #8 ; reinposto i valori al loro valore iniziali
               mov     r1, #vett_a ; r1 lo faccio ri puntare al primo elemento dell array
               ldr     r3, [r1] ; carico in r6 il primo elemento dell array
scan_max_a     
               cmp     r0, #0 ; finche la lunghezza non ìe uguale a 0
               beq     end_scan_max_a ; appena e uguaela a zero finisci il cilco
               ldr     r5, [r1], #4 ; valore corrente
               cmp     r5, r3 ; compara il valore corrnte con il max temporaneo
               ble     skipmax ; se il valore corrente e maggiore del max vai avanti
               mov     r3, r5 ; il massimo sta in r3

skipmax        
               sub     r0,r0,#1 ; togli un elelemnto dalla lunghezza
               b       scan_max_a ; comtinua il ciclo

end_scan_max_a 

               ;       calcolo il numero k

               add     r7, r2, r3 ; somma tra max e min
               asr     r8, r7, #1 ;k




               mov     r0,#8
               mov     r1,#vett_a ; reinposta tutto come linizio

findamaxb      

               cmp     r0, #0 ;
               beq     end_findamaxb

               ldr     r10, [r1], #4 ; carico in r3 il valore corrente di vett_a e lo incremento ad ogni iterazioniìe di una posizione
               ;Dopo   aver caricato il valore in R3, il puntatore R1 viene incrementato di #4 (cioè la dimensione di un word in ARM).

               cmp     r10, r8 ; confrotno valore corrente con k
               bgt     found ; (Branch if Greater) se r3 maggiore di r8 vai in found

               sub     r0, r0, #1 ; altrimeti rimuovi 1 dalla lunghezza dell array
               b       findamaxb ; ripeti

found          
               add     r9, r9, #1 ; incrementi r9 ( che contiene il counter)
               sub     r0,r0,#1 ; rimuovi 1 dalla lunghezza dell array

               b       findamaxb ;ripeti

end_findamaxb  
















