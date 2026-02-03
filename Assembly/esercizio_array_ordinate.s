            ;
size         dcd     9
array        dcd     4,5,8,9,10,11,14,15,20
             ;
             ;
             ;       R0 = i
             ;       R1 = ptr array
             ;       R2 = elemento da inserire
             ;
             mov     r1,#size
             ldr     r0,[r1]
             mov     r1,#array
             mov     r2,#22
             ;
             ;       r1 = r1 + r0*4
             ;
             ;       r3 = r0 * 4
             lsl     r3,r0,#2
             ;       r1 = r1 + r3
             add     r1,r1,r3
             ;

loop         
             cmp     r0,#0
             blt     end_loop

             ldr     r3,[r1,#-4]
             cmp     r3,r2
             bgt     move_element

             str     r2,[r1]
             b       end_program

move_element 
             str     r3,[r1]

             sub     r1,r1,#4
             sub     r0,r0,#1
             b       loop

end_loop     
             mov     r1,#array
             str     r2,[r1]

end_program  
             mov     r1,#size
             ldr     r0,[r1]
             add     r0,r0,#1
             str     r0,[r1]
             end
