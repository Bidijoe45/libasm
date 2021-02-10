/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: apavel <apavel@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/25 13:20:45 by apavel            #+#    #+#             */
/*   Updated: 2020/11/27 13:04:09 by apavel           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

size_t		ft_strlen(char *str);
char 		*ft_strcpy(char *dst, char *src);
int			ft_strcmp(char *s1, char *s2);
char		*ft_strdup(char *s);
ssize_t		ft_write(int filedes, const void *buff, size_t nbyte);
ssize_t		ft_read(int filedes, void *buff, size_t nbyte);
void		*test();

int main()
{
	char *str1 = "0";
	char *str2 = "0";

	printf("ret: %zd\n", ft_write(-1, NULL, -2));


	return (0);
}