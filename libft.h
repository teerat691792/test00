
#ifndef LIBFT_H
# define LIBFT_H
# include <stdlib.h>
# include <unistd.h>
# include <ctype.h>
# include <string.h>
# include <stdio.h>
# include <stdint.h>
# include <limits.h>
# include <stddef.h>


typedef struct	s_list
{
	void			*content;
	struct s_list	*next;
}				t_list;

/*
// Bonus 
t_list	*ft_lstnew(void *content);
void	ft_lstadd_front(t_list **lst, t_list *new);
int		ft_lstsize(t_list *lst);
t_list	*ft_lstlast(t_list *lst);
void	ft_lstadd_back(t_list **lst, t_list *new);
void	ft_lstdelone(t_list *lst, void (*del)(void *));
void	ft_lstclear(t_list **lst, void (*del)(void *));
void	ft_lstiter(t_list *lst, void (*f)(void *));
t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
*/

/* Mandatory */
size_t	ft_strlen(char *str);
size_t	ft_putstr(char *str);

#endif
