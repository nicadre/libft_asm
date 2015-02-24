// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   main.cpp                                           :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2015/02/24 18:25:29 by niccheva          #+#    #+#             //
//   Updated: 2015/02/24 18:33:04 by niccheva         ###   ########.fr       //
//                                                                            //
// ************************************************************************** //

#include <string.h>
#include <iostream>

extern "C" {
	void ft_bzero(void *s, size_t n);
}

int main(void)
{
	std::string s("Hello");

	ft_bzero(const_cast<char *>(s.c_str()), 5);
	std::cout << s << std::endl;
	return (0);
}
