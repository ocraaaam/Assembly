;; le variabili diventano registri
; moltiplicazione intera
;r1 = A
;R2 = B
;r0 = result

   mov r1, #2
   mov r2, #5

   mov r0, #0




multiply_loop


    cmp r2,#0
    beq end_multiply

    ;r2 != 0
    add r0, r0, r1 ; r0 = r0 + r1
    sub r2, r2, #1 ; r2 = r2 - 1
    b multiply_loop


end_multiply

       ;;     whilw( r2 != 0) {
            ; r0 = r0 + r1;
       ;r2 = r2 - 1
    ;}
