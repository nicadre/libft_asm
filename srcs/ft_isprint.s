;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/28 23:47:13 by niccheva          #+#    #+#              ;
;    Updated: 2015/02/28 23:50:11 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl ko
	cmp rdi, 127
	jae ko
	jmp ok

ok:
	mov rax, 1
	ret
ko:
	mov rax, 0
	ret
