; m.saeed khatami
org 100h
 
.data                                                                         ; my variables section

array DB 20 dup(6,7,15,31,32,1,5,6,28)
sum DW 0
avg DB 0

intavg DB 0
floatavg DB 0

.code

    mov si, 0
nextnumber:    
    
    
    mov al, array[si]                                                         ; get array number and store it in al 
    cbw                                                                       ; convert al to ax
    
    mov bl, 2                                                                 ; storing 2 in bl
    div bl                                                                    ; dividing that number in array with 2 that it shows number is even or odd
    
    inc si                                                                    ; si++
    
    cmp ah, 0                                                                 ; comparing the remaining of division with 0
    jne nextnumber                                                            ; if it is NOT equal to zero go to next_number
   
    mul bl                                                                    ; multiplication of ration to get origin number
    cbw                                                                       ; convert al to ax                                    
    add sum, ax                                                               ; add ax to sum
    
    cmp si, 19                                                                ; comparing si to 19 to check if all array numbers are checked before or not
    je getavrage                                                              ; jump if si is 19 to get_avrage
    jne nextnumber                                                            ; jump when si is NOT equal 19 to next_number


getavrage:
    mov ax, sum                                                               ; storing smu in ax
    mov bl, 20                                                                ; storing 20 to bl
    div bl                                                                    ; dividing ax and bl
    mov avg, al                                                               ; storing the integer part of division to avg
                                                                              ; here is my magic
    mov dl, ah                                                                ; storing ah in dl
    mov cl, al                                                                ; storing al in cl
    
    mov intavg, al                                                            ; get the integer part of last divistion to int_avg
    mov bl, 2                                                                 ; store 2 in bl
    mov al, ah                                                                ; changing the value of al with ah
    cbw                                                                       ; convert al to ax
    div bl                                                                    ; dividing ax and 2
    mov floatavg, al                                                          ; storing ration in float_avg
                                                                              
                                                                              ; if you get 10 in your int_avg
                                                                              ; and 5 in your float_avg
                                                                              ; means you complete avrage is 10.5   
                                                                 
ret                                                                           ; return                                                                                                                                           