NAME	= push_swap
CC		= gcc
CFLAGS	= -g #-Wall -Werror -Wextra -g
NAME	= push_swap

SRC_PATH = src/
OBJ_PATH = obj/

SRC		= main.c utils2.c str_util.c\
		filling.c split.c\
		operations.c valid_helper.c arg.c \
		sort.c stackhelpers.c\
		utils.c valid.c oper.c\
		helpers.c op.c\
		maxmincheck.c sort_helpers.c\
		fivenumbers.c
SRCS	= $(addprefix $(SRC_PATH), $(SRC))
OBJ		= $(SRC:.c=.o)
OBJS	= $(addprefix $(OBJ_PATH), $(OBJ))
INCS	= -I ./includes/

all: $(OBJ_PATH) $(NAME) 

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	$(CC) $(CFLAGS) -c $< -o $@ $(INCS)

$(OBJ_PATH):
	mkdir $(OBJ_PATH)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
