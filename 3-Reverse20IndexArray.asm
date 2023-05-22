; m.saeed khatami
org 100h
 
.data                                                                         ; my variables section

array DB 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19
count DW 19

.code
mov bx, 0                                                                     ; bx is zero, start
mov si, count                                                                 ; si is 19, finish

notfinish:
mov cl, array[bx]                                                             ; gets array number and store it in cl
mov al, array[si]                                                             ; gets array number and store it in al

mov array[si], cl                                                             ; swaping last number with first number 
mov array[bx], al                                                             ; swaping first number with last number

dec si                                                                        ; si--
inc bx                                                                        ; bx++
cmp si,9                                                                      ; comparing si with 9, why9?
                                                                              ; because it swaping from the 19th element with zero one
                                                                              ; and 18th with 1st
                                                                              ; and with this method if we swap 9 of them it revesed all the array

jne notfinish                                                                 ; jump if si is NOT equals with 9

                                                                                                                                                            
ret                                                                           ; return                                                                                                                                           