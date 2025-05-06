# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/29 14:22:04 by lyanga            #+#    #+#              #
#    Updated: 2025/05/06 12:41:18 by lyanga           ###   ########.fr        #
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
BONUSPATH	=	./bonus
BOBJSPATH	=	./
INC			=	./

SRCS		=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
				ft_strlen.c \
				ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
				ft_strlcpy.c ft_strlcat.c \
				ft_toupper.c ft_tolower.c \
				ft_strchr.c ft_strrchr.c ft_strncmp.c \
				ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c
				
SRCSNAME	=	$(subst $(SRCSPATH), , $(SRCS))

OBJSNAME	=	$(SRCSNAME:.c=.o)
OBJS		=	$(addprefix $(OBJSPATH), $(OBJSNAME))

BONUS		=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
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

all:	p_bar $(NAME) p_bar_close p_libft_logo
	@printf "\n$(B)$(MAG)$(NAME) is finished compiling$(D)\n"

p_bar:
	tput reset
	$(call progress_bar)

p_bar_bonus:
	tput reset
	$(call progress_bar_bonus)

p_bar_close:
	@printf "\n\n"

p_libft_logo:
	@printf "$(YEL)\n"
	@printf "        :::     ::::::::              :::       ::::::::::::::::::::       ::::::::::::::::::::: \n"
	@printf "      :+:     :+:    :+:             :+:           :+:    :+:    :+:      :+:           :+:      \n"
	@printf "    +:+ +:+        +:+              +:+           +:+    +:+    +:+      +:+           +:+       \n"
	@printf "  +#+  +:+      +#+   +#++:++#++:+++#+           +#+    +#++:++#+       :#::+::#      +#+        \n"
	@printf "+#+#+#+#+#+  +#+                  +#+           +#+    +#+    +#+      +#+           +#+         \n"
	@printf "     #+#   #+#                   #+#           #+#    #+#    #+#      #+#           #+#          \n"
	@printf "    ###  ##########             ##############################       ###           ###           \n"
	@printf "::::::::::::::::::::::::::::::::::::::::::::::::::: $(D)by lyanga AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

$(NAME):	$(OBJS)
	@$(AR) $(NAME) $(OBJS)

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

.PHONY: all clean fclean re bonus p_bar p_bar_bonus p_bar_close p_libft_logo

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