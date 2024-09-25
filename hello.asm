.model small
.stack 100h
.data
.code
Mov ax,0xb800
Mov es,ax
Mov si,0
Mov es:[si], 'T'
Inc si
Mov byte ptr es:[si], 11100100b
Inc si
Mov es:[si], 'A'
Inc si
Mov byte ptr es:[si], 11100100b
Inc si
Mov es:[si], 'L'
Inc si
Mov byte ptr es:[si], 11100100b
Inc si
Mov es:[si], 'H'
Inc si
Mov byte ptr es:[si], 11100100b
Inc si
Mov es:[si], 'A'
Inc si
Mov byte ptr es:[si], 11100100b
Inc si
.exit