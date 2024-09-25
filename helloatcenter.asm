.model small
.stack 100h
.data
.code
Mov ax,0xb800
Mov es,ax
Mov si,2000
Mov es:[si], 'T'
inc si
mov byte ptr es:[si],01110100b
inc si
Mov es:[si], 'A'
inc si
mov byte ptr es:[si],01110100b
inc si
Mov es:[si], 'L'
inc si
mov byte ptr es:[si],01110100b
inc si
Mov es:[si], 'H'
inc si
mov byte ptr es:[si],01110100b
inc si
Mov es:[si], 'A'
inc si
mov byte ptr es:[si],01110100b

.exit