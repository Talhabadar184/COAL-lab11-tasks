.model small
.stack 200h
.data

msg db "talhabadar",0

.code

mov ax,@data
mov ds,ax





mov ax,12    ;;rr
mov bx,160   ;tc
mul bx


mov cx, ax


mov ax,40     ;rc
mov bx,2
mul bx
add cx,ax

 
mov bx,0
mov bx,offset msg
push bx;4
mov si,cx


mov ax,0


call print


.exit


print proc
    
    push bp
    
    mov bp,sp
    
    mov bx,[bp+4]
  
    mov ax,0xb800
    mov es,ax
    mov ax,0  
    mov di,0   
    
    display:
    
    mov al,[bx+di]
     
    cmp  al,0
    
    je end
mov es:[si],al
add si,2
inc di
      
jmp display 
 end:
pop bp

ret
print endp
    
    
    
    
    
    