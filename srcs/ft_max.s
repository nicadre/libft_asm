;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_max.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 14:12:31 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:13:28 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_max

_ft_max:
	xor rax, rax
	cmp edi, esi
	jge first

second:
	mov eax, esi
	ret

first:
	mov eax, edi
	ret
