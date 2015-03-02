;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/28 23:11:33 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/02 15:22:20 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	je ok_isalnum
	call _ft_isdigit
	cmp rax, 1
	je ok_isalnum
	jmp ko_isalnum

ok_isalnum:
	ret
ko_isalnum:
	mov rax, 0
	ret
