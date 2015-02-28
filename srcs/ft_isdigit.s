;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/28 23:08:35 by niccheva          #+#    #+#              ;
;    Updated: 2015/02/28 23:11:12 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isdigit

_ft_isdigit:
	cmp rdi, 47
	jle ko
	cmp rdi, 58
	jae ko
	jmp ok

ok:
	mov rax, 1
	ret
ko:
	mov rax, 0
	ret
