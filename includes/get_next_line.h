/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maalexan <maalexan@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/17 15:28:50 by maalexan          #+#    #+#             */
/*   Updated: 2022/12/17 15:53:04 by maalexan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# include <stdlib.h>
# include <unistd.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

typedef struct s_node
{
	char	*buffer;
	int		start;
	int		end;
	int		size;
	int		parsed;
}	t_node;

char	*get_next_line(int fd);
char	*read_fd(int fd, t_node old, t_node *mod_new, int size);
int		create_node(t_node *node, int fd);
char	*create_line(char *line, char *append, int copy_amount, int size);
void	free_node(t_node *node);

#endif
