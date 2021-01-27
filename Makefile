# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wendell <wendell@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/28 14:40:57 by wendell           #+#    #+#              #
#    Updated: 2020/07/28 14:54:16 by wendell          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol
FLAGS = -Wall -Wextra -Werror
SRCS = src/main.c src/init.c src/drawning.c src/mandelbrot.c src/julia.c src/burningship.c src/mandelbar.c src/palmset.c src/potoki.c src/hooks.c src/mousehooks.c src/ft_fun.c
OBJS = src/main.o src/init.o src/drawning.o src/mandelbrot.o src/julia.o src/burningship.o src/mandelbar.o src/palmset.o src/potoki.o src/hooks.o src/mousehooks.o src/ft_fun.o

all: $(NAME)

$(OBJS): %.o: %.c
	gcc -c -g $(FLAGS) $< -o $@

$(NAME): $(OBJS)
	gcc $(SRCS) -lmlx -framework OpenGl -framework AppKit $(FLAGS) -o $(NAME)
debug:
	gcc -g $(SRCS) -lmlx -framework OpenGl -framework AppKit $(FLAGS) -o $(NAME)

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
.PHONY : all clean fclean re