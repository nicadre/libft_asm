;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:48:30 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:50:26 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	rep movsb
	pop rdi

	mov rax, rdi
	ret
