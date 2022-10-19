# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: ivan-mel <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/11 17:13:38 by ivan-mel      #+#    #+#                  #
#    Updated: 2022/10/11 18:56:25 by ivan-mel      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

SRCS		:=	ft_*.c

RM 			:= rm -f

NAME 		:= 	libft.a

FLAGS 		:= -Wall -Werror -Wextra

CC 			:= 	gcc

OBJS		:=	${SRCS:.c=.o}

AR 			:=	ar -rc

${NAME}: 	${OBJS}
	${AR} $@ $^

all:	${NAME}

%.o:	%.c
	${CC} ${FLAGS} -c $^

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re:	fclean all

.PHONY: all clean fclean re

