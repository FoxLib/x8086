
            org     0

            mov     ax, $b800
            mov     ds, ax
            mov     ax, $1721
            mov     cx, 1000
@@:         mov     [bx], ax
            add     bx, 2
            dec     cx
            jne     @b
            je      $
