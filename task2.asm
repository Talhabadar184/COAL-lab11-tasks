.model small
.stack 200h
.data

msg db "talhabadar",0Ah,"hello",09h,"i am in",0Dh,"coal lab",0

.code

mov ax,@data
mov ds,ax





push bx;2

mov ax,12    ;rr
mov bx,160   ;tc*2
mul bx


mov cx, ax


mov ax,40    ;rc
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
     
    cmp  al,0Ah 
    je  new
    
    
mov es:[si],al
inc si 
mov byte ptr es:[si],00000010b 
inc si
inc di
      
      
jmp display

 
 
 
 new:
 
 add si,134  
  display1:
    
    mov al,[bx+di]
     
    cmp  al,09h 
    je  tab
    
  
mov es:[si],al
inc si 
mov byte ptr es:[si],00000010b 
inc si
inc di
      
      
jmp display1 

tab:
        
         add si,8
  display2:
    
    mov al,[bx+di]
     
    cmp  al,0Dh 
    je  cr
    
  
mov es:[si],al
inc si 
mov byte ptr es:[si],00000010b 
inc si
inc di
      
      
jmp display2 
cr:
        mov ax,si
        mov cx,160
        mov dx,0
        div cx
        sub si,dx 
        ;sub si,94
  display3:
    
    mov al,[bx+di]
     
    cmp  al,0h 
    je  end
    
  
mov es:[si],al
inc si 
mov byte ptr es:[si],00000010b 
inc si
inc di
      
      
jmp display3
end: 

print endp


