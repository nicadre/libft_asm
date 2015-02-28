;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/28 21:21:39 by niccheva          #+#    #+#              ;
;    Updated: 2015/02/28 23:57:54 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jae upper
	jmp ko_isalpha

upper:
	cmp rdi, 90
	ja lower
	jmp ok_isalpha

lower:
	cmp rdi, 97
	jl ko_isalpha
	cmp rdi, 122
	jle ok_isalpha
	jmp ko_isalpha

ok_isalpha:
	mov rax, 1
	ret

ko_isalpha:
	mov rax, 0
	ret
