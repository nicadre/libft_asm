;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/24 18:13:29 by niccheva          #+#    #+#              ;
;    Updated: 2015/02/24 18:52:40 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_bzero

_ft_bzero:
	xor rcx, rcx

loop:
	cmp rcx, rsi
	jae end

	mov byte [rdi + rcx], 0
	inc rcx
	jmp loop

end:
	ret
