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

SRCS		:=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
				ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
				ft_lstnew_bonus.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
				ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
				ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
				ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
				ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c \
				ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c \
				ft_tolower.c ft_toupper.c

SRCSB		:=	ft_lstnew_bonus.c

RM 			:=	rm -f

NAME 		:= 	libft.a

FLAGS 		:= -Wall -Werror -Wextra

CC 			:= 	gcc

OBJS		:=	${SRCS:.c=.o}

OBJSB		:=	${SRCSB:_bonus.c=_bonus.o}

AR 			:=	ar -rc

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

all:	${NAME}

%.o: %.c
	${CC} ${FLAGS} -c $<

bonus:	${OBJSB}
	${CC} ${FLAGS} -c ${SRCSB}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re:	fclean all

.PHONY: all clean fclean re

