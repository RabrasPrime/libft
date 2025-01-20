/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tjooris <tjooris@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 13:19:51 by tjooris           #+#    #+#             */
/*   Updated: 2024/11/18 13:26:56 by tjooris          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include <limits.h>

int	result(unsigned long long int nb, int signe)
{
	if (nb > (unsigned long long int)LLONG_MAX && signe < 0)
		return (-1);
	if (nb > (unsigned long long int)LLONG_MAX && signe > 0)
		return (0);
	return (nb * signe);
}

int	ft_atoi(const char *nptr)
{
	int						i;
	unsigned long long int	nb;
	int						signe;

	signe = 1;
	i = 0;
	nb = 0;
	while (nptr[i] == ' ' || ('\t' <= nptr[i] && '\r' >= nptr[i]))
		i++;
	if (nptr[i] == '+' || nptr[i] == '-')
	{
		if (nptr[i] == '-')
			signe *= -1;
		i++;
	}
	while ('0' <= nptr[i] && '9' >= nptr[i])
	{
		nb = (nb * 10) + (nptr[i] - '0');
		i++;
	}
	return (result(nb, signe));
}
