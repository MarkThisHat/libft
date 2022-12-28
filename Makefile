# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maalexan <maalexan@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/27 14:23:12 by maalexan          #+#    #+#              #
#    Updated: 2022/10/16 00:09:35 by coder            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Werror -Wextra
SRC = ./srcs/libf/
HDR = -I ./includes/
FUNC = ft_strchr.c ft_split.c ft_strtrim.c ft_bzero.c ft_strnstr.c ft_strmapi.c ft_isprint.c ft_atoi.c ft_strdup.c ft_tolower.c ft_toupper.c ft_substr.c ft_striteri.c ft_memchr.c ft_putnbr_fd.c ft_strlcpy.c ft_itoa.c ft_memset.c ft_calloc.c ft_strlen.c ft_putchar_fd.c ft_isascii.c ft_strlcat.c ft_putendl_fd.c ft_memcmp.c ft_isdigit.c ft_strrchr.c ft_putstr_fd.c ft_isalpha.c ft_strncmp.c ft_isalnum.c ft_memcpy.c ft_memmove.c ft_strjoin.c
BONI = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
JOINSRCFUNC = $(addprefix $(SRC), $(FUNC))
JOINBONUS = $(addprefix $(SRC), $(BONI))
OBJ = $(FUNC:.c=.o)
OBONUS = $(BONI:.c=.o)

all: $(NAME)
	@echo building libft.a

$(OBJ):
		@cc $(FLAGS) $(HDR) -c $(JOINSRCFUNC)

$(NAME): $(OBJ)
		@ar -rc $(NAME) $(OBJ)

bonus: $(NAME) $(OBONUS)
	@echo building bonus lib

$(OBONUS):
		@cc $(FLAGS) $(HDR) -c $(JOINBONUS)
		@ar -rc $(NAME) $(OBONUS)

clean:
		@echo cleaning objects
		@rm -f $(OBJ) $(OBONUS)

fclean: clean
		@echo cleaning archive
		@rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
