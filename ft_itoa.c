/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_itoa.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: ivan-mel <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/19 12:19:58 by ivan-mel      #+#    #+#                 */
/*   Updated: 2022/10/19 14:12:24 by ivan-mel      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

char	*ft_itoa(int n)
{
	char *str;
	int	i;
	int basenum;

	i = 0;
	basenum = 0;
	if (!(str = (char *)malloc(sizeof(char) * (i + 1))))
		return (NULL);
	while (n < 0)
		str[0] = '-';
	str[i] = '\0';
	return (str)
}
