# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkulket <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/28 19:20:13 by tkulket           #+#    #+#              #
#    Updated: 2022/09/20 21:32:02 by tkulket          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME  = libft.a

SRC		= 		ft_putstr.c

#BONUS	= 		ft_lstnew.c ft_lstadd_front.c ft_lstsize.c\
				ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
				ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS := $(SRC:.c=.o)
#BONUS_OBJS := $(BONUS:.c=.o)

all: $(NAME)

.c.o:
	gcc -g -Wall -Wextra -Werror -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

c: re
	gcc -g -Wall -Wextra -Werror main.c -L. -lft  && ./a.out

v: c
	valgrind ./a.out

clean:
	rm -f $(OBJS) $(BONUS_OBJS)

fclean: clean
	rm -f $(NAME) $(bonus) 

re: fclean all

.PHONY : all bonus clean fclean re
