.model small

.data
    name_surname db 'Sinan Uygun', '$'
    numb db '123456789','$'
    msg1 db 10,13,'name:','$'
    msg2 db 10,13,'numb:','$'

.code

print proc
    mov ah,9
    int 21h
    ret
print endp

main proc

    mov ax,@data    ;The data segment address should then be loaded into the AX register
    mov ds,ax       ;In order to gain access to the data segment


    lea dx,msg1     ;The data should be loaded into the DX register
    call print      ;It is necessary to call the print function

    lea dx,name_surname
    call print

    lea dx,msg2
    call print

    lea dx,numb
    call print

    mov ah,4Ch      ;It is recommended that the programme be terminated
    int 21h         ;The programme should be terminated by calling a DOS interrupt.

main endp
end main




