/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_substr.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: ivan-mel <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/17 11:07:29 by ivan-mel      #+#    #+#                 */
/*   Updated: 2022/10/19 11:48:48 by ivan-mel      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include "libft.h"

char *ft_substr(char const *s, unsigned int start, size_t len)
{
	size_t i;
	size_t j;
	char *s1;

	i = 0;
	j = 0;
	if (s == NULL)
		return (NULL);
	if (!(s1 = (char *)malloc(sizeof(char) * (len + 1))))
		return (NULL);
//	while (i < len && start < ft_strlen(s))
//		i++;
//	if (!(s1 = malloc(sizeof(char) * (i + 1))))
//		return (NULL);
//	i = 0;
//	if (s1 == NULL)
//		return (NULL);
	while (s[i] != '\0')
	{
		if (j < len && i >= start)
		{
			s1[j] = s[i];
			j++;
		}
		i++;
	}
	s1[j] = '\0';
	return (s1);
}
