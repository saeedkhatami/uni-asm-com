org 100h 
.data                                                                         ; my variables section

array  db 35,65,54,47,13,23,100,44,55,71,12,83,93,124,75,96,37,92,91,50       ; my 20 element array
count  dw 20                                                                  

.code                                                                         ; now code starts, this section is already as known as .text

    mov cx,count      
    dec cx              

nextscan:                                                                     ; scan to numbers
    mov bx,cx
    mov si,0 

nextcomp:                                                                     ; compare two numbers

    mov al,array[si]
    mov dl,array[si+1]
    cmp al,dl

    jnc noswap                                                                ; if dst is NOT bigger than src, code jumps to noswap
                                                                              ; swap dst with src
    mov array[si],dl                                                          ; swap dst with src
    mov array[si+1],al

noswap: 
    inc si                                                                    ; si++
    dec bx                                                                    ; bx--
    jnz nextcomp                                                              ; if zero flag is NOT 1, jump to next compare

    loop nextscan                                                             ; loop command watches CX register and if its NOT zero, goes to next scan



ret                                                                           ; return 
