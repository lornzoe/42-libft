# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_files.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/05 19:11:11 by lyanga            #+#    #+#              #
#    Updated: 2025/05/05 19:11:12 by lyanga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# 1  - libc funcs
touch ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c
touch ft_strlen.c
touch ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c 
touch ft_strlcpy.c ft_strlcat.c 
touch ft_toupper.c ft_tolower.c
touch ft_strchr.c ft_strrchr.c ft_strncmp.c
touch ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c

# 1b - libc funcs that require malloc
touch ft_calloc.c ft_strdup.c

# part 2 - additional functions
touch ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

# bonus
mkdir bonus
cd bonus 
touch ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c