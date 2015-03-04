;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/04 13:03:39 by niccheva          #+#    #+#              ;
;    Updated: 2015/03/04 13:07:31 by niccheva         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcat

_ft_strcat:
	push rdi
	xor rax, rax
	xor rcx, rcx
	xor rdx, rdx

size:
	cmp byte [rdi + rax], 0
	je loop

inc_size:
	inc rax
	jmp size

loop:
	cmp byte [rsi + rcx], 0
	je end
	mov dl, byte [rsi + rcx]
	mov byte [rdi, rax], dl
	inc rax
	inc rcx
	jmp loop

end:
	pop rdi
	mov rax, rdi
	ret
