# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/29 14:22:04 by lyanga            #+#    #+#              #
#    Updated: 2025/04/04 12:08:14 by lyanga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# name
NAME	=	libft.a
# cc options
CC		=	cc
CFLAGS	= 	-Wall -Werror -Wextra
# remove
RM		=	rm -f
# archive
AR		=	ar rcs

# **************************************************************************** #
# srcs

SRCSPATH	=	./
OBJSPATH	=	./
BONUSPATH	=	./
BOBJSPATH	=	./
INC			=	./

SRCS		=	# main files go here.
SRCSNAME	=	$(subst $(SRCSPATH), , $(SRCS))

OBJSNAME	=	$(SRCSNAME:.c=.o)
OBJS		=	$(addprefix $(OBJSPATH), $(OBJSNAME))

BONUS		=	# bonus files go here
BONUSNAME 	=	$(subst $(BOBJSPATH), , $(BONUS))

# **************************************************************************** #
# custom stuff

define	progress_bar
	@i=0
	@while [[ $$i -le $(words $(SRCS)) ]] ; do \
		printf " " ; \
		((i = i + 1)) ; \
	done
	@printf "$(B)]\r[$(GRE)"
endef

define	progress_bar_bonus
	@i=0
	@while [[ $$i -le ($(words $(SRCS)) + $(words $(BONUS))) ]] ; do \
		printf " " ; \
		((i = i + 1)) ; \
	done
	@printf "$(B)]\r[$(GRE)"
endef

# **************************************************************************** #
# rules

all:	p_bar $(NAME) p_bar_close
	@printf "\n$(B)$(MAG)$(NAME) is finished compiling$(D)\n"

p_bar:
	tput reset
	$(call progress_bar)

p_bar_bonus:
	tput reset
	$(call progress_bar_bonus)

p_bar_close:
	@printf "\n\n"

$(NAME):	$(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

$(OBJSPATH)%.o: $(SRCSPATH)%.c
	@mkdir -p $(dir $@) # 2> /dev/null || true
	@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@
	@printf "█"

$(BOBJSPATH)%.o: $(BONUSPATH)%.c
	@mkdir -p $(dir $@) # 2> /dev/null || true
	@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@
	@printf "$(YEL)█"

clean:
	@$(RM) $(OBJS)
	@echo "$(B)Cleaned$(D)"


fclean:	clean
	@$(RM) $(NAME)
	@echo "$(B)FCleaned$(D)"

re:	fclean all

.PHONY: all clean fclean re bonus p_bar p_bar_bonus p_bar_close

# **************************************************************************** #
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