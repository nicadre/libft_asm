;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 14:25:41 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:27:58 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcmp

_ft_strcmp:
	xor rax, rax
	xor rcx, rcx
	push rdi
	push rsi

loop:
	mov al, byte[rdi]
	mov cl, byte[rsi]
	cmp rax, rcx
	jne ret
	cmp byte [rdi], 0
	je out
	inc rdi
	inc rsi
	jmp loop

ret:
	sub rax, rcx

out:
	pop rsi
	pop rdi
	ret
