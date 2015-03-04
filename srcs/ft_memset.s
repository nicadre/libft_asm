;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:45:14 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:46:55 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memset

_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb

	pop rax
	ret
