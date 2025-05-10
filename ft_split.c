/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 15:36:51 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/10 12:25:39 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	ft_get_offset_from_sep(char *str, char c)
{
	size_t	offset;

	offset = 0;
	while (*str)
	{
		if (c == *str)
			return (offset);
		str++;
		offset++;
	}
	return (offset);
}

static size_t	ft_count_words(char *str, char c)
{
	size_t	count;

	count = 1;
	if (!*str)
		return (0);
	while (*str)
	{
		if (c == *str)
		{
			count++;
			if (!ft_get_offset_from_sep(str - 1, c))
				count--;
			break ;
		}
		str++;
	}
	return (count);
}

static void	*ft_cleanup(char **temp, char **words)
{
	while (temp != words)
	{
		temp--;
		free(*temp);
	}
	free(words);
	
	return (NULL);
}

char	**ft_split(char const *s, char c)
{
	char		**words;
	char		**temp;
	size_t		offset;

	words = ft_calloc(sizeof(char *), ft_count_words((char *)s, c) + 1);
	if (!words)
		return (NULL);
	temp = words;
	while (*s)
	{
		offset = ft_get_offset_from_sep((char *)s, c);
		if (offset)
		{
			*temp = calloc(sizeof(char), offset + 1);
			if (!(*temp))
				return (ft_cleanup(temp, words));
			ft_strlcpy(*temp, s, offset);
			s += offset;
			temp++;
		}
		if (*s)
			s++;
	}
	return (words);
}
