/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 14:35:31 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/06 14:53:05 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*dest;
	char	*src;
	size_t	l;

	l = ft_strlen(s) - start;
	if (len < l)
		l = len;
	dest = malloc(sizeof(char) * (l + 1));
	if (!dest)
		return (NULL);

	src = (char *)s + start;
	ft_strlcpy(dest, src, l + 1);
	return dest;
}
