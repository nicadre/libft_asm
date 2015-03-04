;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:20:26 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:43:48 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strlen

_ft_strlen:
	cmp rdi, 0x0
	je null

	push rdi
	xor rcx, rcx
	not rcx

	xor rax, rax
	repnz scasb

	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret

null:
	xor rax, rax
	ret
