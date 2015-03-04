;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncmp.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 14:25:41 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:43:04 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strncmp

_ft_strncmp:
	xor rax, rax
	xor rcx, rcx
	push rdi
	push rsi

loop:
	cmp rdx, 0
	je ret
	mov al, byte[rdi]
	mov cl, byte[rsi]
	cmp rax, rcx
	jne ret
	cmp byte [rdi], 0
	je out
	inc rdi
	inc rsi
	dec rdx
	jmp loop

ret:
	sub rax, rcx

out:
	pop rsi
	pop rdi
	ret
