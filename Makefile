# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/29 14:22:04 by lyanga            #+#    #+#              #
#    Updated: 2025/04/04 03:02:58 by lyanga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= name

# cc options
CC		=	cc
CFLAGS	= 	-Wall -Werror -Wextra

RM		= rm -f

# text colours
B		=	$(shell tput bold)
BLA		=	$(shell tput setaf 0)
RED		=	$(shell tput setaf 1)
GRE		=	$(shell tput setaf 2)
YEL		=	$(shell tput setaf 3)
BLU		=	$(shell tput setaf 4)
MAG		=	$(shell tput setaf 5)
CYA		=	$(shell tput setaf 6)
WHI		=	$(shell tput setaf 7)
D		=	$(shell tput sgr0)
BEL		=	$(shell tput bel)
CLR		=	$(shell tput el 1)

# srcs
SRCSPATH	=	./
OBJSPATH	=	./
INC			=	./

SRCS		=	$(wildcard $(SRCSPATH)*.c) $(wildcard $(SRCSPATH)**/*.c)
SRCSNAME	=	$(subst $(SRCSPATH), , $(SRCS))

OBJSNAME	=	$(SRCSNAME:.c=.o)
OBJS		=	$(addprefix $(OBJSPATH), $(OBJSNAME))

# custom stuff

define	progress_bar
	@i=0
	@while [[ $$i -le $(words $(SRCS)) ]] ; do \
		printf " " ; \
		((i = i + 1)) ; \
	done
	@printf "$(B)]\r[$(GRE)"
endef

# rules

all:	p_bar $(NAME) p_bar_close
	@printf "\n$(B)$(MAG)$(NAME) is finished compiling$(D)\n"

p_bar:
	tput reset
	$(call progress_bar)

p_bar_close:
	@printf "\n\n"

$(NAME):	$(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

$(OBJSPATH)%.o: $(SRCSPATH)%.c
	@mkdir -p $(dir $@) # 2> /dev/null || true
	@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@
	@printf "█"

clean:
	@$(RM) $(OBJS)
	@echo "$(B)Cleaned$(D)"


fclean:	clean
	@$(RM) $(NAME)
	@echo "$(B)FCleaned$(D)"

re:	fclean all

.PHONY: all clean fclean re p_bar p_bar_close print_a_nicholas
