;Tursi Gianluca | gianlucatursi.com
;Lunghezza di una stringa in assembler

.model small
.stack
.data
        vett db 10 dup (?)
.code
lungstr:
        xor     di,     di      ;azzera di
        call    label3          ;chiama procedura
        mov     ah,     4ch
        int     21h



label3 proc                     ;inizio procedura
        label1:                 ;etichetta
        mov al, vett[di]
        cmp     al,     0       ;compare
        je     label2          
        inc     di
        jmp     label1          ;torna a label1
        label2:
        ret
label3  endp
end
