/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mguille <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/28 00:34:14 by mguille           #+#    #+#             */
/*   Updated: 2023/02/28 00:34:23 by mguille          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdlib.h>
# include <unistd.h>
# include <stdint.h>

int		ft_printf(const char *str, ...);
int		printchar(int c);
int		ft_print_str(char *str);
int		ft_print_percent(void);
int		ft_hex_len(unsigned	int num);
void	ft_put_hex(unsigned int num, const char format);
int		ft_print_hex(unsigned int num, const char format);
int		ft_print_nbr(int n);
int		ft_print_ptr(unsigned long long ptr);
int		ft_ptr_len(uintptr_t num);
int		ft_print_unsigned(unsigned int n);
void	ft_putstr(char *str);

#endif