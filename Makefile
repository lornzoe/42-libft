# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/29 14:22:04 by lyanga            #+#    #+#              #
#    Updated: 2025/05/31 21:01:57 by lyanga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# name
NAME	=	$(OUTDIR)/libft.a
# cc options
CC		=	cc
CFLAGS	=	-Wall -Werror -Wextra
DEBUG	=	-g -O0 
# remove
RM		=	rm -f
# archive
AR		=	ar rcs
# outdir, by default it's current dir
OUTDIR ?= .

# **************************************************************************** #
# srcs

SRCSPATH	=	./
OBJSPATH	?=	./
BONUSPATH	=	./
BOBJSPATH	?=	./
INC			=	./

SRCS		=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
				ft_strlen.c \
				ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
				ft_strlcpy.c ft_strlcat.c \
				ft_toupper.c ft_tolower.c \
				ft_strchr.c ft_strrchr.c ft_strncmp.c \
				ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
				ft_calloc.c ft_strdup.c \
				ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
				ft_strmapi.c ft_striteri.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
				ft_strrev.c ft_ilen.c ft_uilen_base.c ft_uitoa.c ft_uitoa_base.c ft_isspace.c ft_abs.c \

BONUSSRCS		=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

SRCSNAME	=	$(subst $(SRCSPATH), , $(SRCS))

OBJSNAME	=	$(SRCSNAME:.c=.o)
OBJS		=	$(addprefix $(OBJSPATH), $(OBJSNAME))

BSRCSNAME 	=	$(subst $(BONUSPATH), , $(BONUSSRCS))
BOBJSNAME	= 	$(BSRCSNAME:.c=.o)
BOBJS		= 	$(addprefix $(BOBJSPATH), $(BOBJSNAME))

# **************************************************************************** #
# rules

all: $(NAME) p_libft_logo
	@printf "\n$(B)$(MAG)$(NAME) is finished compiling$(D)\n"

p_libft_logo:
	@printf "$(YEL)\n"
	@printf "        :::     ::::::::              :::       ::::::::::::::::::::       ::::::::::::::::::::: \n"
	@printf "      :+:     :+:    :+:             :+:           :+:    :+:    :+:      :+:           :+:      \n"
	@printf "    +:+ +:+        +:+              +:+           +:+    +:+    +:+      +:+           +:+       \n"
	@printf "  +#+  +:+      +#+   +#++:++#++:+++#+           +#+    +#++:++#+       :#::+::#      +#+        \n"
	@printf "+#+#+#+#+#+  +#+                  +#+           +#+    +#+    +#+      +#+           +#+         \n"
	@printf "     #+#   #+#                   #+#           #+#    #+#    #+#      #+#           #+#          \n"
	@printf "    ###  ##########             ##############################       ###           ###           \n"
	@printf "::::::::::::::::::::::::::::::::::::::::::::::::::: $(D)by lyanga AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n"

$(NAME):	$(OBJS)
	@$(AR) $(NAME) $(OBJS)

$(OBJSPATH)%.o: $(SRCSPATH)%.c
	@mkdir -p $(dir $@) # 2> /dev/null || true
	@$(CC) $(DEBUG) $(CFLAGS) -I$(INC) -c $< -o $@
	@printf "$(GRE)█$(D)"

$(BOBJSPATH)%.o: $(BONUSPATH)%.c
	@mkdir -p $(dir $@) # 2> /dev/null || true
	@$(CC) $(DEBUG) $(CFLAGS) -I$(INC) -c $< -o $@
	@printf "$(YEL)█$(D)"

b: $(OBJS) $(BOBJS)
	@$(AR) $(NAME) $(OBJS) $(BOBJS)

bonus: b p_libft_logo

clean:
	@$(RM) $(OBJS) $(BOBJS)
	@echo "$(B)Cleaned$(D)"


fclean:	clean
	@$(RM) $(NAME)
	@echo "$(B)FCleaned$(D)"

extern: $(OBJS) $(BOBJS)

re:	fclean all

.PHONY: all clean fclean re bonus p_bar p_bar_bonus p_bar_close p_libft_logo b bonus

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
