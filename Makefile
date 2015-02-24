#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/24 18:13:06 by niccheva          #+#    #+#              #
#    Updated: 2015/02/24 18:24:33 by niccheva         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.SUFFIXES:

NAMELIB = libfts.a
NAME = test

FLAGS = -Wall -Wextra -Werror

NASM = nasm -f macho64

CC = g++

SRCD = srcs/

OBJD = objs/

SRC = ft_bzero.s

OBJ = $(patsubst %.s, $(OBJD)%.o, $(SRC))

RM	= /bin/rm -f
RMA	= /bin/rm -Rf
MKD	= /bin/mkdir -p

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAMELIB) $(OBJ)
	@ranlib $(NAMELIB)
	@$(CC) $(FLAGS) $(OBJ) main.cpp -o $(NAME) -L. -lfts
	@echo "Compil done"

$(OBJD)%.o: $(SRCD)%.s
	@$(MKD) $(OBJD)
	@$(NASM) $< -o $@

clean:
	@$(RM) $(OBJ)
	@$(RMA) $(OBJD)
	@echo "Obj deleted"

fclean: clean
	@$(RM) $(NAME)
	@$(RM) $(NAMELIB)
	@echo "bin deleted"

re:	fclean all

.PHONY: all clean fclean re