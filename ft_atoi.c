/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 13:50:28 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/10 19:18:09 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_isspace(int c)
{
	if (c == ' ')
		return (1);
	if (c == '\t')
		return (1);
	if (c == '\r')
		return (1);
	if (c == '\n')
		return (1);
	if (c == '\v')
		return (1);
	if (c == '\f')
		return (1);
	return (0);
}

int	ft_atoi(const char *nptr)
{
	int		result;
	int		sign;
	char	*s;

	result = 0;
	sign = 1;
	s = (char *)nptr;
	while (*s && ft_isspace(*s))
		s++;
	if (s && (*s == '+' || *s == '-'))
	{
		if (*s == '-')
			sign = -1;
		s++;
	}
	while (*s && ft_isdigit(*s))
	{
		result *= 10;
		result += (*s - '0');
		s++;
	}
	return (result *= sign);
}
