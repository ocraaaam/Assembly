              ;;

vett_a        dcd     3,4,5,6,7,8,9,10
vett_v1       fill    40

              ;       r0 = len vetta_a
              ;       r1 = ptr vett_a
              ;       r2 elemento coorrente vett
              ;       r3 =len vett_v1
              ;       r4 = calcolo
              ;       r5 = ptrb vett_v1

              mov     r0, #8
              mov     r1, #vett_a
              mov     r5, #vett_v1

              mov     r3,#0

scan_loop     
              cmp     r0,#0
              beq     end_scan_loop

              ldr     r2,[r1], #4

              and     r4, r2, #3

              ;se     r4 = 0i bit 0 e 1 di r2 sono 0
              ;       se r4 != 0 i bit 0 e 1 sono entrambi a 1

              cmp     r4, #0
              bne     skip


              str     r2,[r5], #4
              add     r3, r3, #1

skip          
              sub     r0,r0,#1
              b       scan_loop
end_scan_loop 
