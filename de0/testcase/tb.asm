
        org     0
        neg     bx
@@:     in      al, $64
        and     al, 1
        je      @b
        mov     ax, $A020
        out     $20, ax
        jmp     $

