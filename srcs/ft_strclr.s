;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strclr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 14:46:07 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 14:50:28 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strclr
extern _ft_strlen
extern _ft_bzero

_ft_strclr:
	call _ft_strlen
	mov rsi, rax
	call _ft_bzero
	ret
