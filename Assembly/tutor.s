PIPPO   DCD     3
OUTPUT  FILL    4

       MOV     R0, #PIPPO
       LDR     R1, [R0]

       MOV     R2, #OUTPUT
       ADD     R1, R1, #1
       STR     R1, [R2]  "il primo argoemnto è sempre un registro [sorgente -> destinazione]