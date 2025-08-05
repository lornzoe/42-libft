# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/08/05 21:24:54 by lyanga            #+#    #+#              #
#    Updated: 2025/08/06 01:38:28 by lyanga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# name
NAME		=	$(OUTDIR)/libft.a
# cc options
CC			=	cc
CFLAGS		=	-Wall -Werror -Wextra
DEBUG_FLAGS		=	-g -O0 
# remove
RM			=	rm -f
# archive
AR			=	ar rcs
# outdir, by default it's current dir
OUTDIR 		?=	.

ifeq ($(DEBUG),1)
    CFLAGS += $(DEBUG_FLAGS)
endif


# **************************************************************************** #
DIR_HEADERS	=	headers/
DIR_OBJS	=	objs/

DIR_LIBFT	=	ft_libft/
DIR_PRINTF	=	ft_printf/
DIR_GNL		=	ft_gnl/

# tell make to look here for the respective source files
vpath %.c $(DIR_LIBFT):$(DIR_PRINTF):$(DIR_GNL)

# source files
LIBFT_SRCS	=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
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
				ft_strrev.c ft_ilen.c ft_uilen_base.c ft_uitoa.c ft_uitoa_base.c ft_isspace.c ft_abs.c ft_ptoa.c \
				ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
SRCS_LIBFT	=	$(addprefix $(DIR_LIBFT), $(LIBFT_SRCS))
OBJS_LIBFT	=	$(addprefix $(DIR_OBJS), $(LIBFT_SRCS:.c=.o))

PRINTF_SRCS =	ft_printf.c ft_printf_vars.c ft_printf_getpaddedstr.c ft_printf_getargstr.c	\
				ft_printf_getargstr_c.c ft_printf_getargstr_s.c \
				ft_printf_getargstr_di.c ft_printf_getargstr_u.c ft_printf_getargstr_xx.c \
				ft_printf_printarg.c
SRCS_PRINTF	=	$(addprefix $(DIR_PRINTF), $(PRINTF_SRCS))
OBJS_PRINTF	=	$(addprefix $(DIR_OBJS), $(PRINTF_SRCS:.c=.o))

GNL_SRCS	=	ft_gnl.c
SRCS_GNL	=	$(addprefix $(DIR_GNL), $(GNL_SRCS))
OBJS_GNL	=	$(addprefix $(DIR_OBJS), $(GNL_SRCS:.c=.o))


SRCS    =   $(SRCS_LIBFT) $(SRCS_PRINTF) $(SRCS_GNL)
OBJS    =   $(OBJS_LIBFT) $(OBJS_PRINTF) $(OBJS_GNL)
				
.PHONY: all clean fclean re bonus

all: $(NAME)

$(NAME): $(OBJS)
	@echo "Creating library..."
	@$(AR) $(NAME) $(OBJS)
	@echo "Library created successfully."

# Rule for libft object files
$(OBJS_LIBFT): $(DIR_OBJS)%.o: $(DIR_LIBFT)%.c
	@mkdir -p $(@D)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -I $(DIR_HEADERS) -c $< -o $@

# Rule for ft_printf object files
$(OBJS_PRINTF): $(DIR_OBJS)%.o: $(DIR_PRINTF)%.c
	@mkdir -p $(@D)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -I $(DIR_HEADERS) -c $< -o $@

# Rule for ft_gnl object files
$(OBJS_GNL): $(DIR_OBJS)%.o: $(DIR_GNL)%.c
	@mkdir -p $(@D)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -I $(DIR_HEADERS) -c $< -o $@

$(DIR_OBJS)/%.o: %.c
	@mkdir -p $(@D)
	@echo "Compiling $<..."
	@$(CC) $(CFLAGS) -I $(DIR_HEADERS) -c $< -o $@

clean:
	@echo "Cleaning object files..."
	@$(RM) $(OBJS)
	@$(RM) -r $(DIR_OBJS)

fclean: clean
	@echo "Cleaning library..."
	@$(RM) $(NAME)

re: fclean all
