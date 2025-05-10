/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 15:15:38 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/10 12:22:35 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int ft_isinset(char const c, char const *set)
{
	char	*s;

	s = (char *)set;
	while (*s)
	{
		if (c == *s++)
			return (c);
	}
	return (0);
}

char *ft_strtrim(char const *s1, char const *set)
{
	char	*itr;
	char	*itr2;
	char	*result;
	size_t	len;

	itr = (char *)s1;
	len = ft_strlen(s1);
	while (*itr)
	{
		if (ft_isinset(*itr++, set))
			len--;
	}
	result = malloc (sizeof(char) * (len + 1));
	if (!result)
		return NULL;
	itr = (char *)s1;
	itr2 = result;
	while (*itr)
	{
		if (!ft_isinset(*itr, set))
			*itr2++ = *itr;
		itr++;
	}
	*itr2 = 0;
	return result;
}
