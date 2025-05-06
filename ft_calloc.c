/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 14:12:33 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/06 14:38:11 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	unsigned char *temp;
	size_t i;

	if (nmemb * size > INT_MAX)
		return NULL;
	if (!nmemb || !size)
		return NULL;
	temp = malloc(nmemb * size);
	if (!temp)
		return NULL;
	i = 0;

	while (i < nmemb * size)
		temp[i++] = 0;
	
	return (temp);
}
