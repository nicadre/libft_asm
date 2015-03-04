;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:09:15 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:10:52 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_toupper

_ft_toupper:
	mov rax, rdi

	cmp rdi, 'a'
	jl return
	cmp rdi, 'z'
	jg return

upper:
	sub rax, 32
	ret

return:
	ret
