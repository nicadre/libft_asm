#include <iostream>
#include <fstream>
#include <string.h>

extern "C" {
	int		ft_isdigit(int c);
	int		ft_isalpha(int c);
	int		ft_isalnum(int c);
	int		ft_isascii(int c);
	int		ft_isprint(int c);
	int		ft_toupper(int c);
	int		ft_tolower(int c);
	void	ft_bzero(void *s, size_t n);
	size_t	ft_strlen(const char *s);
	char *	ft_strcat(char * s1, const char * s2);
	int		ft_puts(const char *s);
	int		ft_max(int a, int b);
	void *	ft_memset(void *b, int c, size_t len);
	void *	ft_memcpy(void *dst, const void *src, size_t n);
	int		ft_min(int a, int b);
	char *	ft_strdup(const char *s1);
	void	ft_cat(int fd);
	int		ft_strcmp(const char *a, const char *b);
	int		ft_strncmp(const char *a, const char *b, int size);
	void	ft_strclr(char *s);
}

void	test_isdigit( void ) {
	std::cout << "##### isdigit #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_isdigit('1') : " << (ft_isdigit('1') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isdigit('a') : " << (ft_isdigit('a') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isdigit('6') : " << (ft_isdigit('6') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isdigit('#') : " << (ft_isdigit('#') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_isalpha( void ) {
	std::cout << "##### isalpha #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_isalpha('a') : " << (ft_isalpha('a') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha('2') : " << (ft_isalpha('2') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha('Z') : " << (ft_isalpha('Z') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha(' ') : " << (ft_isalpha(' ') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha('@') : " << (ft_isalpha('@') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha('A') : " << (ft_isalpha('A') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalpha('z') : " << (ft_isalpha('z') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_isalnum( void ) {
	std::cout << "##### isalnum #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_isalnum('a')  : " << (ft_isalnum('a') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('2')  : " << (ft_isalnum('2') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('Z')  : " << (ft_isalnum('Z') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum(' ')  : " << (ft_isalnum(' ') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('4')  : " << (ft_isalnum('4') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('@')  : " << (ft_isalnum('@') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum(1337) : " << (ft_isalnum(1337) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('A')  : " << (ft_isalnum('A') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isalnum('z')  : " << (ft_isalnum('z') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_isascii( void ) {
	std::cout << "##### isascii #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_isascii(-42)  : " << (ft_isascii(-42) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isascii('a')  : " << (ft_isascii('a') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isascii('6')  : " << (ft_isascii('6') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isascii('#')  : " << (ft_isascii('#') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isascii(1337) : " << (ft_isascii(1337) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_isprint( void ) {
	std::cout << "##### isprint #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_isprint(-42) : " << (ft_isprint(-42) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isprint(' ') : " << (ft_isprint(' ') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isprint('6') : " << (ft_isprint('6') == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isprint(0)   : " << (ft_isprint(0) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isprint(126) : " << (ft_isprint(126) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "# ft_isprint(127) : " << (ft_isprint(127) == 0 ? "NOK" : "OK") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_toupper( void ) {
	std::cout << "##### toupper #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_toupper('*') : " << static_cast<char>(ft_toupper('*')) << std::endl;
	std::cout << "# ft_toupper('Z') : " << static_cast<char>(ft_toupper('Z')) << std::endl;
	std::cout << "# ft_toupper('b') : " << static_cast<char>(ft_toupper('b')) << std::endl;
	std::cout << "# ft_toupper('R') : " << static_cast<char>(ft_toupper('R')) << std::endl;
	std::cout << "# ft_toupper('a') : " << static_cast<char>(ft_toupper('a')) << std::endl;
	std::cout << "# ft_toupper('6') : " << static_cast<char>(ft_toupper('6')) << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_tolower( void ) {
	std::cout << "##### tolower #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_tolower('*') : " << static_cast<char>(ft_tolower('*')) << std::endl;
	std::cout << "# ft_tolower('A') : " << static_cast<char>(ft_tolower('A')) << std::endl;
	std::cout << "# ft_tolower('l') : " << static_cast<char>(ft_tolower('l')) << std::endl;
	std::cout << "# ft_tolower('I') : " << static_cast<char>(ft_tolower('I')) << std::endl;
	std::cout << "# ft_tolower('6') : " << static_cast<char>(ft_tolower('6')) << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_bzero( void ) {
	std::string		text("Hello world");

	std::cout << "##### bzero #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# text = (" << text << ")" << std::endl;
	std::cout << "# ft_bzero(text)" << std::endl;
	ft_bzero(const_cast<char *>(text.c_str()), 11);
	std::cout << "# text = (" << text << ")" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strlen( void ) {
	std::cout << "##### strlen #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# strlen(\"Hello world\") : " << strlen("Hello World") << std::endl;
	std::cout << "# ft_strlen(\"Hello world\") : " << ft_strlen("Hello World") << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strcat( void ) {
	char		text[12];
	std::string	text1("Hello");
	std::string	text2(" world");

	ft_bzero(text, 12);
	std::cout << "##### strcat #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_strcat(\"" << text << "\", \"" << text1 << "\") : ";
	ft_strcat(text, text1.c_str());
	std::cout << "(" << text << ")" << std::endl;
	std::cout << "# ft_strcat(\"" << text << "\", \"" << text2 << "\") : ";
	ft_strcat(text, text2.c_str());
	std::cout << "(" << text << ")" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_puts( void ) {
	std::cout << "##### puts #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_puts(\"Hello world\") : " << std::flush;
	ft_puts("Hello world");
	std::cout << "# ft_puts(NULL) : " << std::flush;
	ft_puts(NULL);
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_memset( void ) {
	std::string		text("Hello world");

	std::cout << "##### memset #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# text : \"" << text << "\"" << std::endl;
	std::cout << "# ft_memset(text, 'b', 5)" << std::endl;
	ft_memset(const_cast<char *>(text.c_str()), 'b', 5);
	std::cout << "# text : \"" << text << "\"" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_memcpy( void ) {
	std::string		text1("alloo world");
	std::string		text2("Hello");

	std::cout << "##### memcpy #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# text1 : \"" << text1 << "\"" << ", text2 : \"" << text2 << "\"" << std::endl;
	std::cout << "# ft_memcpy(text1, text2, 5)" << std::endl;
	ft_memcpy(const_cast<char *>(text1.c_str()), text2.c_str(), 5);
	std::cout << "# text1 : \"" << text1 << "\"" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strdup( void ) {
	std::string		text(ft_strdup("Hello world"));

	std::cout << "##### strdup #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_strdup(\"Hello world\") : " << text << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_cat( void ) {
	int		fd = fileno(std::fopen("file", "r"));

	std::cout << "##### cat #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# ft_cat(-1)" << std::endl;
	ft_cat(-1);
	std::cout << "  " << std::endl;
	std::cout << "# ft_cat(0)" << std::endl;
	ft_cat(0);
	std::cout << "  " << std::endl;
	std::cout << "# ft_cat(" << fd << ")" << std::endl;
	ft_cat(fd);
	std::cout << "  " << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_max(void)
{
	std::cout << "##### max #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "ft_max(1, 2): " << ft_max(1, 2) << std::endl;
	std::cout << "ft_max(2, 1): " << ft_max(2, 1) << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_min(void)
{
	std::cout << "##### min #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "ft_min(1, 2): " << ft_min(1, 2) << std::endl;
	std::cout << "ft_min(2, 1): " << ft_min(2, 1) << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strcmp(void)
{
	std::cout << "##### strcmp #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "ft_strcmp(\"Hello\", \"Hella\"): " << ft_strcmp("Hello", "Hella") << std::endl;
	std::cout << "o - a = " << 'o' - 'a' << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strncmp(void)
{
	std::cout << "##### strncmp #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "ft_strncmp(\"Hello\", \"Hella\", 2): " << ft_strncmp("Hello", "Hella", 2) << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

void	test_strclr( void ) {
	std::string		text("Hello world");

	std::cout << "##### strclr #####" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << "# text = (" << text << ")" << std::endl;
	std::cout << "# ft_strclr(text)" << std::endl;
	ft_strclr(const_cast<char *>(text.c_str()));
	std::cout << "# text = (" << text << ")" << std::endl;
	std::cout << "#" << std::endl;
	std::cout << std::endl;
}

int		main() {
	test_isdigit();
	test_isalpha();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_bzero();
	test_strlen();
	test_strcat();
	test_puts();
	test_memset();
	test_memcpy();
	test_strdup();
	test_cat();
	test_max();
	test_min();
	test_strcmp();
	test_strncmp();
	test_strclr();
	return (0);
}
