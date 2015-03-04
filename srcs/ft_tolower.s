;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:12:07 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:13:13 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_tolower

_ft_tolower:
	mov rax, rdi

	cmp rdi, 'A'
	jl return
	cmp rdi, 'Z'
	jg return

lower:
	add rax, 32
	ret

return:
	ret
