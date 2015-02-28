;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/28 23:42:05 by niccheva          #+#    #+#              ;
;    Updated: 2015/02/28 23:46:30 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl ko
	cmp rdi, 127
	ja ko
	jmp ok

ok:
	mov rax, 1
	ret
ko:
	mov rax, 0
	ret
