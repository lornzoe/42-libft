/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize_bonus.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42singapore.sg>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/10 10:16:07 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/10 10:19:28 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int ft_lstsize(t_list *lst)
{
	t_list	*itr;
	int	count;

	itr = lst;
	count = 0;
	if (!itr->next)
		return 1;
	while (itr->next)
	{
		count++;
		itr = itr->next;
	}
	return (count);
}
