LIBFT	= ./libft/libft.a
LIBS	= -L./libft -lft

NAME = libftprintf.a

SRCS =	ft_flag_process.c \
		ft_flag_process2.c \
		ft_type_process.c \
		ft_type_process2.c \
		ft_printf_utils.c \
		ft_printf.c

CC = gcc

FLAGS = -c -Wall -Wextra -Werror

INCLUDES = -I./includes

OBJS = $(SRCS:.c=.o)

$(NAME):	$(OBJS)
			$(MAKE) -C ./libft
			cp libft/libft.a $(NAME)
			$(CC) $(FLAGS) $(INCLUDES) $(SRCS)
			ar -rcs $(NAME) $(OBJS)
			ranlib $(NAME)

all : 		$(NAME)

bonus :		$(NAME)

re:			fclean $(NAME)

clean :
			$(MAKE) clean -C ./libft
			rm -rf $(OBJS)

fclean :	clean
			$(MAKE) fclean -C ./libft
			rm -rf $(NAME)

re : fclean all