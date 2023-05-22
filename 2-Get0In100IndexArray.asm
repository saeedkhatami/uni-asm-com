; m.saeed khatami
org 100h
 
.data                                                                         ; my variables section

array DB 100 dup(1,3,6,9,7,4,0,5,8,5,2)
count DW 0 
counter DW 100

.code                                                                         ; now code starts, this section is already as known as .text
    mov cx, counter
    dec cx

countezero:
    mov al, array[si]                                                         ; get array number and move it to al
    cmp al, 0                                                                 ; comparing that array number is 0 or not
                                                                               
    jne dontaddcounter                                                        ; compare is not equal to 0 it goes to dont_add_counter

    inc count                                                                 ; if it equals to 0 do count++

dontaddcounter:
    inc si                                                                    ; si++
    dec cx                                                                    ; cx--
    jnz countezero                                                            ; jump if zero flag is NOT 1 to countzero
    cmp cx, 0                                                                 ; comparing cx with 0
    je finish                                                                 ; if comparing is equal 0 finish program, it means program checked all 100 numbers.

finish:                                                                       ; finish


ret                                                                           ; return 