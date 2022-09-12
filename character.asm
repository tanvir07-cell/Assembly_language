.model small 
.stack 100h

.data
msg db "Enter your favourite number =  $"

.code

main proc
    ;initialize the data segment in the code segment for these 2 lines
    
    mov ax,@data
    mov ds,ax
    
    
    ;print this "Enter your favourite number = "
    
    mov ah,9
    lea dx,msg
    int 21h 
    
    
    ;Now input a single character
    mov ah,1
    int 21h
    mov bl,al
    
    ;Now print this single character
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main