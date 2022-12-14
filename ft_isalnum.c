/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   isalnum.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: ivan-mel <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/04 12:54:24 by ivan-mel      #+#    #+#                 */
/*   Updated: 2022/10/11 16:05:20 by ivan-mel      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_isalnum(int a)
{
	if ((a >= '0' && a <= '9') || (a >= 'a' && a <= 'z')
		|| (a >= 'A' && a <= 'Z'))
		return (1);
	return (0);
}
/*
int	main(void)
{
	printf("%d", ft_isalnum('-'));
	return (0);
}*/
