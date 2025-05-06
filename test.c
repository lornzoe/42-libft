/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lyanga <lyanga@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 10:54:45 by lyanga            #+#    #+#             */
/*   Updated: 2025/05/06 11:56:20 by lyanga           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h> //printf
#include <ctype.h> // is_()

void is_test(void)
{
    //isalpha
    printf("\n=== isalpha\n");
    printf("testing a - %d \n", isalpha('a'));
    printf("testing ft a - %d \n", ft_isalpha('a'));
    printf("testing z - %d \n", isalpha('z'));
    printf("testing ft z - %d \n", ft_isalpha('z'));
    printf("testing 0 - %d \n", isalpha('0'));
    printf("testing ft 0 - %d \n", ft_isalpha('0'));
    printf("testing 9 - %d \n", isalpha('9'));
    printf("testing ft 9 - %d \n", ft_isalpha('9'));
    printf("testing A - %d \n", isalpha('A'));
    printf("testing ft A- %d \n", ft_isalpha('A'));
    printf("testing Z - %d \n", isalpha('Z'));
    printf("testing ft Z- %d \n", ft_isalpha('Z'));
    printf("testing ~ - %d \n", isalpha('~'));
    printf("testing ft ~ - %d \n", ft_isalpha('~'));
    
    //isdigit
    printf("\n=== isdigit\n");
    printf("testing a - %d \n", isdigit('a'));
    printf("testing ft a - %d \n", ft_isdigit('a'));
    printf("testing z - %d \n", isdigit('z'));
    printf("testing ft z - %d \n", ft_isdigit('z'));
    printf("testing 0 - %d \n", isdigit('0'));
    printf("testing ft 0 - %d \n", ft_isdigit('0'));
    printf("testing 9 - %d \n", isdigit('9'));
    printf("testing ft 9 - %d \n", ft_isdigit('9'));
    printf("testing A - %d \n", isdigit('A'));
    printf("testing ft A- %d \n", ft_isdigit('A'));
    printf("testing Z - %d \n", isdigit('Z'));
    printf("testing ft Z- %d \n", ft_isdigit('Z'));
    printf("testing ~ - %d \n", isdigit('~'));
    printf("testing ft ~ - %d \n", ft_isdigit('~'));

    //isalnum
    printf("\n=== isalnum\n");
    printf("testing a - %d \n", isalnum('a'));
    printf("testing ft a - %d \n", ft_isalnum('a'));
    printf("testing z - %d \n", isalnum('z'));
    printf("testing ft z - %d \n", ft_isalnum('z'));
    printf("testing 0 - %d \n", isalnum('0'));
    printf("testing ft 0 - %d \n", ft_isalnum('0'));
    printf("testing 9 - %d \n", isalnum('9'));
    printf("testing ft 9 - %d \n", ft_isalnum('9'));
    printf("testing A - %d \n", isalnum('A'));
    printf("testing ft A- %d \n", ft_isalnum('A'));
    printf("testing Z - %d \n", isalnum('Z'));
    printf("testing ft Z- %d \n", ft_isalnum('Z'));
    printf("testing ~ - %d \n", isalnum('~'));
    printf("testing ft ~ - %d \n", ft_isalnum('~'));
    
    
    //isascii
    printf("\n=== isascii\n");
    printf("testing a - %d \n", isascii('a'));
    printf("testing ft a - %d \n", ft_isascii('a'));
    printf("testing z - %d \n", isascii('z'));
    printf("testing ft z - %d \n", ft_isascii('z'));
    printf("testing 0 - %d \n", isascii('0'));
    printf("testing ft 0 - %d \n", ft_isascii('0'));
    printf("testing 9 - %d \n", isascii('9'));
    printf("testing ft 9 - %d \n", ft_isascii('9'));
    printf("testing A - %d \n", isascii('A'));
    printf("testing ft A- %d \n", ft_isascii('A'));
    printf("testing Z - %d \n", isascii('Z'));
    printf("testing ft Z- %d \n", ft_isascii('Z'));
    printf("testing ~ - %d \n", isascii('~'));
    printf("testing ft ~ - %d \n", ft_isascii('~'));
    printf("testing DEL - %d \n", isascii(127));
    printf("testing ft DEL - %d \n", ft_isascii(127));
    printf("testing 129 - %d \n", isascii(129));
    printf("testing ft 129 - %d \n", ft_isascii(129));

    //isprint
    printf("\n=== isprint\n");
    printf("testing a - %d \n", isprint('a'));
    printf("testing ft a - %d \n", ft_isprint('a'));
    printf("testing z - %d \n", isprint('z'));
    printf("testing ft z - %d \n", ft_isprint('z'));
    printf("testing 0 - %d \n", isprint('0'));
    printf("testing ft 0 - %d \n", ft_isprint('0'));
    printf("testing 9 - %d \n", isprint('9'));
    printf("testing ft 9 - %d \n", ft_isprint('9'));
    printf("testing A - %d \n", isprint('A'));
    printf("testing ft A- %d \n", ft_isprint('A'));
    printf("testing Z - %d \n", isprint('Z'));
    printf("testing ft Z- %d \n", ft_isprint('Z'));
    printf("testing ~ - %d \n", isprint('~'));
    printf("testing ft ~ - %d \n", ft_isprint('~'));
    printf("testing DEL - %d \n", isprint(127));
    printf("testing DEL - %d \n", ft_isprint(127));
    printf("testing 129 - %d \n", isprint(129));
    printf("testing ft 129 - %d \n", ft_isprint(129));
    
}

void strlen_test(void)
{
}
int main(void)
{
   is_test();
   return 0;
}
