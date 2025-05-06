/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 13:44:56 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/07 00:47:37 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *big, const char *little, size_t len)
{
	char	*l;
	char	*start;

	l = (char *)little;
	while (len-- > 0)
	{
		if (*big == *l)
		{
			if (*l == *little)
				start = (char *)big;
			l++;
			if (*l == 0)
				return (start);
		}
		else
			start = 0;
		big++;
	}
	return (start);
}
