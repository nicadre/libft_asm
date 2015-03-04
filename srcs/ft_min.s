;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_min.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 14:21:02 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:22:17 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_min

_ft_min:
	xor rax, rax
	cmp edi, esi
	jle first

second:
	mov eax, esi
	ret

first:
	mov eax, edi
	ret
