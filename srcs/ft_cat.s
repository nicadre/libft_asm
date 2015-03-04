;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:59:36 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:08:18 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_cat

section .bss

buffer:
	resb 4096

section .text

_ft_cat:
	cmp rdi, 0
	jl exit

	push rdi

loop:
	pop rdi
	lea rsi, [rel buffer]
	mov rdx, 4096
	mov rax, 0x2000003

	syscall
	jc exit

	cmp rax, 0
	je exit

	push rdi

	mov rdi, 1
	mov rdx, rax

	mov rax, 0x2000004
	syscall
	jc exit
	jmp loop

exit:
	ret
