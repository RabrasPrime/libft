/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tjooris <tjooris@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/11 15:10:48 by tjooris           #+#    #+#             */
/*   Updated: 2024/11/18 13:11:02 by tjooris          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static unsigned int	count_words(char const *str, char c)
{
	unsigned int	word;
	unsigned int	count;

	word = 0;
	count = 0;
	while (str[count] != 0)
	{
		if (count == 0 && str[count] != c)
			word++;
		else if (count != 0 && str[count - 1] == c && str[count] != c)
			word++;
		count++;
	}
	return (word);
}

static unsigned int	strlen_c(char const *str, char c)
{
	int	nb;

	nb = 0;
	while (str[nb] != '\0' && str[nb] != c)
		nb++;
	return (nb);
}

static	char	*create_word(char const *str, char c, int n)
{
	char			*p;
	unsigned int	sc;
	unsigned int	wc;

	sc = 0;
	while (n > 0)
	{
		if (sc == 0 && str[sc] != c)
			n--;
		else if (sc != 0 && str[sc - 1] == c && str[sc] != c)
			n--;
		sc++;
	}
	sc--;
	p = (char *)malloc(sizeof(char) * (strlen_c(str + sc, c) + 1));
	if (!p)
		return (NULL);
	wc = 0;
	while (str[sc] != c && str[sc] != 0)
		p[wc++] = str[sc++];
	p[wc] = 0;
	return (p);
}

static	void	*free_all(char	**tabstr, int i)
{
	while (i >= 0)
	{
		if (tabstr[i] != NULL)
			free(tabstr[i]);
		i--;
	}
	free(tabstr);
	return (NULL);
}

char	**ft_split(char const *string, char sep)
{
	char			**splt;
	unsigned int	w;
	int				nb_word;

	if (string == NULL)
		return (NULL);
	w = count_words(string, sep);
	splt = (char **)malloc(sizeof(char *) * (w + 1));
	if (!splt)
		return (NULL);
	nb_word = 0;
	while (nb_word < (int) w)
	{
		splt[nb_word] = create_word(string, sep, nb_word + 1);
		if (splt[nb_word] == 0)
			return (free_all(splt, nb_word--));
		nb_word++;
	}
	splt[nb_word] = 0;
	return (splt);
}
