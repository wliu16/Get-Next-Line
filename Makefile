# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wliu <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/29 14:26:26 by wliu              #+#    #+#              #
#    Updated: 2016/12/13 14:08:56 by wliu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = test_gnl

SRC = get_next_line.c main.c

O_FILES = *.o

all: $(NAME)

$(NAME):
	make -C libft/ fclean && make -C libft/
	clang -Wall -Wextra -Werror -I libft/includes -o get_next_line.o -c get_next_line.c
	clang -Wall -Wextra -Werror -I libft/includes -o main.o -c main.c
	clang -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft

clean:
		/bin/rm -f $(O_FILES)

fclean: clean
		/bin/rm -f $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
