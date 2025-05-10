/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 22:47:04 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/10 19:23:19 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char	*ft_strrev(char *str, size_t len)
{
	size_t	start;
	size_t	end;
	char	temp;

	start = 0;
	end = len - 1;
	while (start < end)
	{
		temp = str[start];
		str[start] = str[end];
		str[end] = temp;
		start++;
		end--;
	}
	return (str);
}

static int	ft_count_digits(int n)
{
	int	size;

	if (n == 0)
		return (1);
	size = 0;
	while (n != 0)
	{
		n /= 10;
		size++;
	}
	return (size);
}

char	*ft_itoa(int n)
{
	int		negative;
	int		digits;
	char	*str;
	char	*itr;
	long	num;

	negative = (n < 0);
	digits = ft_count_digits(n) + negative;
	str = ft_calloc(digits + 1, sizeof(char));
	if (!str)
		return (NULL);
	itr = str;
	num = (long)n;
	if (negative)
		num = -num;
	if (num == 0)
		*itr = '0';
	while (num > 0)
	{
		*itr++ = (num % 10) + '0';
		num /= 10;
	}
	if (negative)
		*itr = '-';
	return (ft_strrev(str, digits));
}
