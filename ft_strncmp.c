/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 13:24:33 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/06 13:33:59 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	itr;

	itr = 0;
	while (s1[itr] && s1[itr] == s2[itr] && itr < n)
		itr++;
	if (itr == n)
		return (0);
	return (s1[itr] - s2[itr]);
}
