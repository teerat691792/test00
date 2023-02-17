
#include "libft.h"

size_t	ft_strlen(char *str)
{
	size_t	len;
	
	while(*str++)
		len++;
	return (len);
}

size_t ft_putstr(char *str)
{
	size_t	len;

	len = ft_strlen(str);
	return (write(1, str, len));
}
